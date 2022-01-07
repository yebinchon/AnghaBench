; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32 }
%struct.hvc_iucv_private = type { i32, i32, %struct.iucv_path* }
%struct.iucv_path = type { i32 }

@IUCV_DISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvc_struct*, i32)* @hvc_iucv_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_iucv_dtr_rts(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvc_iucv_private*, align 8
  %6 = alloca %struct.iucv_path*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %12 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hvc_iucv_private* @hvc_iucv_get_private(i32 %13)
  store %struct.hvc_iucv_private* %14, %struct.hvc_iucv_private** %5, align 8
  %15 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %16 = icmp ne %struct.hvc_iucv_private* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %42

18:                                               ; preds = %10
  %19 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %20 = call i32 @flush_sndbuf_sync(%struct.hvc_iucv_private* %19)
  %21 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %22 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %25 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %24, i32 0, i32 2
  %26 = load %struct.iucv_path*, %struct.iucv_path** %25, align 8
  store %struct.iucv_path* %26, %struct.iucv_path** %6, align 8
  %27 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %28 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %27, i32 0, i32 2
  store %struct.iucv_path* null, %struct.iucv_path** %28, align 8
  %29 = load i32, i32* @IUCV_DISCONN, align 4
  %30 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %31 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %5, align 8
  %33 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.iucv_path*, %struct.iucv_path** %6, align 8
  %36 = icmp ne %struct.iucv_path* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load %struct.iucv_path*, %struct.iucv_path** %6, align 8
  %39 = call i32 @iucv_path_sever(%struct.iucv_path* %38, i32* null)
  %40 = load %struct.iucv_path*, %struct.iucv_path** %6, align 8
  %41 = call i32 @iucv_path_free(%struct.iucv_path* %40)
  br label %42

42:                                               ; preds = %9, %17, %37, %18
  ret void
}

declare dso_local %struct.hvc_iucv_private* @hvc_iucv_get_private(i32) #1

declare dso_local i32 @flush_sndbuf_sync(%struct.hvc_iucv_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i32*) #1

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

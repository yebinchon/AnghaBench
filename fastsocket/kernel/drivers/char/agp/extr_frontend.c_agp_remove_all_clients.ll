; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_remove_all_clients.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_remove_all_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_controller = type { %struct.agp_client* }
%struct.agp_client = type { %struct.agp_client*, i32 }
%struct.agp_file_private = type { i32 }

@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_controller*)* @agp_remove_all_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_remove_all_clients(%struct.agp_controller* %0) #0 {
  %2 = alloca %struct.agp_controller*, align 8
  %3 = alloca %struct.agp_client*, align 8
  %4 = alloca %struct.agp_client*, align 8
  %5 = alloca %struct.agp_file_private*, align 8
  store %struct.agp_controller* %0, %struct.agp_controller** %2, align 8
  %6 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %7 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %6, i32 0, i32 0
  %8 = load %struct.agp_client*, %struct.agp_client** %7, align 8
  store %struct.agp_client* %8, %struct.agp_client** %3, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %11 = icmp ne %struct.agp_client* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  store %struct.agp_client* %13, %struct.agp_client** %4, align 8
  %14 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %15 = call i32 @agp_remove_seg_from_client(%struct.agp_client* %14)
  %16 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %17 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.agp_file_private* @agp_find_private(i32 %18)
  store %struct.agp_file_private* %19, %struct.agp_file_private** %5, align 8
  %20 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %21 = icmp ne %struct.agp_file_private* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %24 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %25 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %28 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %29 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %22, %12
  %32 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %33 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %32, i32 0, i32 0
  %34 = load %struct.agp_client*, %struct.agp_client** %33, align 8
  store %struct.agp_client* %34, %struct.agp_client** %3, align 8
  %35 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %36 = call i32 @kfree(%struct.agp_client* %35)
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i32 @agp_remove_seg_from_client(%struct.agp_client*) #1

declare dso_local %struct.agp_file_private* @agp_find_private(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.agp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

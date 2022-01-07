; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ppp_file* }
%struct.ppp_file = type { i32, i32 }
%struct.ppp = type { %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ppp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ppp_file*, align 8
  %6 = alloca %struct.ppp*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ppp_file*, %struct.ppp_file** %8, align 8
  store %struct.ppp_file* %9, %struct.ppp_file** %5, align 8
  %10 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %11 = icmp ne %struct.ppp_file* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  store %struct.ppp_file* null, %struct.ppp_file** %14, align 8
  %15 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %16 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %21 = call %struct.ppp* @PF_TO_PPP(%struct.ppp_file* %20)
  store %struct.ppp* %21, %struct.ppp** %6, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load %struct.ppp*, %struct.ppp** %6, align 8
  %24 = getelementptr inbounds %struct.ppp, %struct.ppp* %23, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %24, align 8
  %26 = icmp eq %struct.file* %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.ppp*, %struct.ppp** %6, align 8
  %29 = call i32 @ppp_shutdown_interface(%struct.ppp* %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %33 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %32, i32 0, i32 1
  %34 = call i64 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %38 = getelementptr inbounds %struct.ppp_file, %struct.ppp_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %36
  %41 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %42 = call %struct.ppp* @PF_TO_PPP(%struct.ppp_file* %41)
  %43 = call i32 @ppp_destroy_interface(%struct.ppp* %42)
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.ppp_file*, %struct.ppp_file** %5, align 8
  %46 = call i32 @PF_TO_CHANNEL(%struct.ppp_file* %45)
  %47 = call i32 @ppp_destroy_channel(i32 %46)
  br label %48

48:                                               ; preds = %36, %44, %40
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %2
  ret i32 0
}

declare dso_local %struct.ppp* @PF_TO_PPP(%struct.ppp_file*) #1

declare dso_local i32 @ppp_shutdown_interface(%struct.ppp*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ppp_destroy_interface(%struct.ppp*) #1

declare dso_local i32 @ppp_destroy_channel(i32) #1

declare dso_local i32 @PF_TO_CHANNEL(%struct.ppp_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_reset_airo_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_reset_airo_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.airo_info* }
%struct.airo_info = type { i32*, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"MAC could not be enabled\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MAC enabled %pM\00", align 1
@FLAG_MPI = common dso_local global i32 0, align 4
@MAX_FIDS = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_airo_card(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 2
  %8 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  store %struct.airo_info* %8, %struct.airo_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @reset_card(%struct.net_device* %9, i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @setup_card(%struct.airo_info* %14, i32 %17, i32 1)
  %19 = load i64, i64* @SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @airo_print_err(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

26:                                               ; preds = %13
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @airo_print_info(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @FLAG_MPI, align 4
  %35 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 1
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MAX_FIDS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %46 = load i32, i32* @AIRO_DEF_MTU, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MAX_FIDS, align 4
  %49 = sdiv i32 %48, 2
  %50 = icmp sge i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @transmit_allocate(%struct.airo_info* %45, i32 %46, i32 %51)
  %53 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %54 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %40

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %65 = call i32 @enable_interrupts(%struct.airo_info* %64)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_wake_queue(%struct.net_device* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %21, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @reset_card(%struct.net_device*, i32) #1

declare dso_local i64 @setup_card(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @airo_print_err(i32, i8*) #1

declare dso_local i32 @airo_print_info(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @transmit_allocate(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @enable_interrupts(%struct.airo_info*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

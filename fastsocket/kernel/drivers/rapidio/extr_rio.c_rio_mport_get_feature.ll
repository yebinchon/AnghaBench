; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio.c_rio_mport_get_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/extr_rio.c_rio_mport_get_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_ASM_INFO_CAR = common dso_local global i32 0, align 4
@RIO_EXT_FTR_PTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_mport_get_feature(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %19 = load i32, i32* @RIO_ASM_INFO_CAR, align 4
  %20 = call i32 @rio_local_read_config_32(%struct.rio_mport* %18, i32 %19, i32* %12)
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RIO_ASM_INFO_CAR, align 4
  %26 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %22, i32 %23, i32 %24, i32 %25, i32* %12)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @RIO_EXT_FTR_PTR_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @rio_local_read_config_32(%struct.rio_mport* %38, i32 %39, i32* %14)
  br label %47

41:                                               ; preds = %34
  %42 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %42, i32 %43, i32 %44, i32 %45, i32* %14)
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @RIO_GET_BLOCK_ID(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @RIO_GET_BLOCK_PTR(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %31

60:                                               ; preds = %58, %31
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @rio_local_read_config_32(%struct.rio_mport*, i32, i32*) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i32*) #1

declare dso_local i32 @RIO_GET_BLOCK_ID(i32) #1

declare dso_local i32 @RIO_GET_BLOCK_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

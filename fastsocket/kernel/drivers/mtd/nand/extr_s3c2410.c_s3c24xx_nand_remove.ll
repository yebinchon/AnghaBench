; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c24xx_nand_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c24xx_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c2410_nand_info = type { i32, %struct.s3c2410_nand_info*, i32*, i32*, %struct.s3c2410_nand_info*, i32 }
%struct.s3c2410_nand_mtd = type { i32, %struct.s3c2410_nand_mtd*, i32*, i32*, %struct.s3c2410_nand_mtd*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"releasing mtd %d (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c2410_nand_info*, align 8
  %5 = alloca %struct.s3c2410_nand_mtd*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.s3c2410_nand_mtd* @to_nand_info(%struct.platform_device* %7)
  %9 = bitcast %struct.s3c2410_nand_mtd* %8 to %struct.s3c2410_nand_info*
  store %struct.s3c2410_nand_info* %9, %struct.s3c2410_nand_info** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @platform_set_drvdata(%struct.platform_device* %10, i32* null)
  %12 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %13 = icmp eq %struct.s3c2410_nand_info* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %17 = bitcast %struct.s3c2410_nand_info* %16 to %struct.s3c2410_nand_mtd*
  %18 = call i32 @s3c2410_nand_cpufreq_deregister(%struct.s3c2410_nand_mtd* %17)
  %19 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %20 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %19, i32 0, i32 4
  %21 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %20, align 8
  %22 = icmp ne %struct.s3c2410_nand_info* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %25 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %24, i32 0, i32 4
  %26 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %25, align 8
  %27 = bitcast %struct.s3c2410_nand_info* %26 to %struct.s3c2410_nand_mtd*
  store %struct.s3c2410_nand_mtd* %27, %struct.s3c2410_nand_mtd** %5, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %41, %23
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %31 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.s3c2410_nand_mtd* %36)
  %38 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %39 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %38, i32 0, i32 5
  %40 = call i32 @nand_release(i32* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %5, align 8
  %45 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %44, i32 1
  store %struct.s3c2410_nand_mtd* %45, %struct.s3c2410_nand_mtd** %5, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %48 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %47, i32 0, i32 4
  %49 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %48, align 8
  %50 = bitcast %struct.s3c2410_nand_info* %49 to %struct.s3c2410_nand_mtd*
  %51 = call i32 @kfree(%struct.s3c2410_nand_mtd* %50)
  br label %52

52:                                               ; preds = %46, %15
  %53 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %54 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %59 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @IS_ERR(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %65 = bitcast %struct.s3c2410_nand_info* %64 to %struct.s3c2410_nand_mtd*
  %66 = call i32 @allow_clk_stop(%struct.s3c2410_nand_mtd* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %70 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @clk_disable(i32* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %75 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @clk_put(i32* %76)
  br label %78

78:                                               ; preds = %73, %57, %52
  %79 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %80 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %85 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @iounmap(i32* %86)
  %88 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %89 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %92 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %91, i32 0, i32 1
  %93 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %92, align 8
  %94 = icmp ne %struct.s3c2410_nand_info* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %97 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %96, i32 0, i32 1
  %98 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %97, align 8
  %99 = bitcast %struct.s3c2410_nand_info* %98 to %struct.s3c2410_nand_mtd*
  %100 = call i32 @release_resource(%struct.s3c2410_nand_mtd* %99)
  %101 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %102 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %101, i32 0, i32 1
  %103 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %102, align 8
  %104 = bitcast %struct.s3c2410_nand_info* %103 to %struct.s3c2410_nand_mtd*
  %105 = call i32 @kfree(%struct.s3c2410_nand_mtd* %104)
  %106 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %107 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %106, i32 0, i32 1
  store %struct.s3c2410_nand_info* null, %struct.s3c2410_nand_info** %107, align 8
  br label %108

108:                                              ; preds = %95, %90
  %109 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %4, align 8
  %110 = bitcast %struct.s3c2410_nand_info* %109 to %struct.s3c2410_nand_mtd*
  %111 = call i32 @kfree(%struct.s3c2410_nand_mtd* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.s3c2410_nand_mtd* @to_nand_info(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @s3c2410_nand_cpufreq_deregister(%struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @kfree(%struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @allow_clk_stop(%struct.s3c2410_nand_mtd*) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.s3c2410_nand_mtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

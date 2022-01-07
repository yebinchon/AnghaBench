; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_sdio.c_b43_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { i32, i32*, i32, %struct.sdio_func_tuple* }
%struct.sdio_device_id = type { i32 }
%struct.b43_sdio = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Chip ID %04x:%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@B43_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to set block size to %u bytes, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to enable func, error %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to allocate ssb bus\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to register ssb sdio bus, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @b43_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.b43_sdio*, align 8
  %7 = alloca %struct.sdio_func_tuple*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 1
  %13 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %12, align 8
  store %struct.sdio_func_tuple* %13, %struct.sdio_func_tuple** %7, align 8
  br label %14

14:                                               ; preds = %66, %2
  %15 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %16 = icmp ne %struct.sdio_func_tuple* %15, null
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %19 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %65 [
    i32 128, label %21
  ]

21:                                               ; preds = %17
  %22 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %23 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %63 [
    i32 128, label %27
  ]

27:                                               ; preds = %21
  %28 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %29 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %35 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %40 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %38, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %47 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %52 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %50, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %59 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63, %33, %32
  br label %66

65:                                               ; preds = %17
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %68 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %67, i32 0, i32 3
  %69 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %68, align 8
  store %struct.sdio_func_tuple* %69, %struct.sdio_func_tuple** %7, align 8
  br label %14

70:                                               ; preds = %14
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %146

79:                                               ; preds = %73
  %80 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %81 = call i32 @sdio_claim_host(%struct.sdio_func* %80)
  %82 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %83 = load i32, i32* @B43_SDIO_BLOCK_SIZE, align 4
  %84 = call i32 @sdio_set_block_size(%struct.sdio_func* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %89 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %88, i32 0, i32 0
  %90 = load i32, i32* @B43_SDIO_BLOCK_SIZE, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %143

93:                                               ; preds = %79
  %94 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %95 = call i32 @sdio_enable_func(%struct.sdio_func* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %100 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %143

103:                                              ; preds = %93
  %104 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %105 = call i32 @sdio_release_host(%struct.sdio_func* %104)
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.b43_sdio* @kzalloc(i32 4, i32 %106)
  store %struct.b43_sdio* %107, %struct.b43_sdio** %6, align 8
  %108 = load %struct.b43_sdio*, %struct.b43_sdio** %6, align 8
  %109 = icmp ne %struct.b43_sdio* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %114 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %138

116:                                              ; preds = %103
  %117 = load %struct.b43_sdio*, %struct.b43_sdio** %6, align 8
  %118 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %117, i32 0, i32 0
  %119 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @b43_sdio_get_quirks(i32 %120, i32 %121)
  %123 = call i32 @ssb_bus_sdiobus_register(i32* %118, %struct.sdio_func* %119, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %128 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %127, i32 0, i32 0
  %129 = load i32, i32* %10, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %135

131:                                              ; preds = %116
  %132 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %133 = load %struct.b43_sdio*, %struct.b43_sdio** %6, align 8
  %134 = call i32 @sdio_set_drvdata(%struct.sdio_func* %132, %struct.b43_sdio* %133)
  store i32 0, i32* %3, align 4
  br label %148

135:                                              ; preds = %126
  %136 = load %struct.b43_sdio*, %struct.b43_sdio** %6, align 8
  %137 = call i32 @kfree(%struct.b43_sdio* %136)
  br label %138

138:                                              ; preds = %135, %110
  %139 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %140 = call i32 @sdio_claim_host(%struct.sdio_func* %139)
  %141 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %142 = call i32 @sdio_disable_func(%struct.sdio_func* %141)
  br label %143

143:                                              ; preds = %138, %98, %87
  %144 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %145 = call i32 @sdio_release_host(%struct.sdio_func* %144)
  br label %146

146:                                              ; preds = %143, %76
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %131
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local %struct.b43_sdio* @kzalloc(i32, i32) #1

declare dso_local i32 @ssb_bus_sdiobus_register(i32*, %struct.sdio_func*, i32) #1

declare dso_local i32 @b43_sdio_get_quirks(i32, i32) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.b43_sdio*) #1

declare dso_local i32 @kfree(%struct.b43_sdio*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_gpio_ne.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_gpio_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i64)* }
%struct.dcb_gpio_func = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"GPIO_NE\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"\09FUNC[0x%02x]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_gpio_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gpio_ne(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca %struct.nouveau_gpio*, align 8
  %5 = alloca %struct.dcb_gpio_func, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %16 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_bios* %15)
  store %struct.nouveau_gpio* %16, %struct.nouveau_gpio** %4, align 8
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i64 @nv_ro08(%struct.nouveau_bios* %17, i64 %21)
  store i64 %22, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %23 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 2
  store i64 %27, i64* %25, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %44, %1
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @nv_ro08(%struct.nouveau_bios* %40, i64 %41)
  %43 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %11, align 8
  br label %31

47:                                               ; preds = %31
  %48 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %120, %47
  %50 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = trunc i64 %51 to i32
  %54 = call i64 @dcb_gpio_parse(%struct.nouveau_bios* %50, i32 0, i32 %53, i64* %8, i64* %9, %struct.dcb_gpio_func* %5)
  store i64 %54, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %121

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %120

61:                                               ; preds = %56
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %82, %61
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %68 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %69, %70
  %72 = icmp slt i64 %66, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @nv_ro08(%struct.nouveau_bios* %76, i64 %77)
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %65

85:                                               ; preds = %80, %65
  %86 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %91 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %85
  %97 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %99 = call i64 @init_exec(%struct.nvbios_init* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %103 = icmp ne %struct.nouveau_gpio* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %106 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %105, i32 0, i32 0
  %107 = load i32 (%struct.nouveau_gpio*, i64)*, i32 (%struct.nouveau_gpio*, i64)** %106, align 8
  %108 = icmp ne i32 (%struct.nouveau_gpio*, i64)* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %111 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %110, i32 0, i32 0
  %112 = load i32 (%struct.nouveau_gpio*, i64)*, i32 (%struct.nouveau_gpio*, i64)** %111, align 8
  %113 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %4, align 8
  %114 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 %112(%struct.nouveau_gpio* %113, i64 %115)
  br label %117

117:                                              ; preds = %109, %104, %101, %96
  br label %118

118:                                              ; preds = %117, %85
  %119 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %56
  br label %49

121:                                              ; preds = %49
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %124 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  ret void
}

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_bios*) #1

declare dso_local i64 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @cont(i8*, ...) #1

declare dso_local i64 @dcb_gpio_parse(%struct.nouveau_bios*, i32, i32, i64*, i64*, %struct.dcb_gpio_func*) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

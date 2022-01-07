; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-migor/extr_lcd_qvga.c_migor_lcd_qvga_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-migor/extr_lcd_qvga.c_migor_lcd_qvga_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@sync_data = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Migo-R QVGA LCD Module detected.\0A\00", align 1
@magic0_data = common dso_local global i32 0, align 4
@magic1_data = common dso_local global i32 0, align 4
@magic2_data = common dso_local global i32 0, align 4
@magic3_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migor_lcd_qvga_setup(i8* %0, i8* %1, %struct.sh_mobile_lcdc_sys_bus_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %2, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  store i64 320, i64* %8, align 8
  store i64 240, i64* %9, align 8
  %11 = call i32 (...) @reset_lcd_module()
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %14 = load i32, i32* @sync_data, align 4
  %15 = load i32, i32* @sync_data, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @migor_lcd_qvga_seq(i8* %12, %struct.sh_mobile_lcdc_sys_bus_ops* %13, i32 %14, i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %20 = call i32 @read_reg16(i8* %18, %struct.sh_mobile_lcdc_sys_bus_ops* %19, i32 0)
  %21 = icmp ne i32 %20, 5381
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %117

25:                                               ; preds = %3
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %29 = load i32, i32* @sync_data, align 4
  %30 = load i32, i32* @sync_data, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @migor_lcd_qvga_seq(i8* %27, %struct.sh_mobile_lcdc_sys_bus_ops* %28, i32 %29, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %35 = call i32 @write_reg16(i8* %33, %struct.sh_mobile_lcdc_sys_bus_ops* %34, i32 164, i32 1)
  %36 = call i32 @mdelay(i32 10)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %39 = load i32, i32* @magic0_data, align 4
  %40 = load i32, i32* @magic0_data, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @migor_lcd_qvga_seq(i8* %37, %struct.sh_mobile_lcdc_sys_bus_ops* %38, i32 %39, i32 %41)
  %43 = call i32 @mdelay(i32 100)
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %46 = load i32, i32* @magic1_data, align 4
  %47 = load i32, i32* @magic1_data, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @migor_lcd_qvga_seq(i8* %44, %struct.sh_mobile_lcdc_sys_bus_ops* %45, i32 %46, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 1
  %54 = sub i64 239, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @write_reg16(i8* %50, %struct.sh_mobile_lcdc_sys_bus_ops* %51, i32 80, i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %59 = call i32 @write_reg16(i8* %57, %struct.sh_mobile_lcdc_sys_bus_ops* %58, i32 81, i32 239)
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %62 = call i32 @write_reg16(i8* %60, %struct.sh_mobile_lcdc_sys_bus_ops* %61, i32 82, i32 0)
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @write_reg16(i8* %63, %struct.sh_mobile_lcdc_sys_bus_ops* %64, i32 83, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %71 = load i32, i32* @magic2_data, align 4
  %72 = load i32, i32* @magic2_data, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @migor_lcd_qvga_seq(i8* %69, %struct.sh_mobile_lcdc_sys_bus_ops* %70, i32 %71, i32 %73)
  %75 = call i32 @mdelay(i32 10)
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %78 = load i32, i32* @magic3_data, align 4
  %79 = load i32, i32* @magic3_data, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @migor_lcd_qvga_seq(i8* %76, %struct.sh_mobile_lcdc_sys_bus_ops* %77, i32 %78, i32 %80)
  %82 = call i32 @mdelay(i32 40)
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %85 = call i32 @write_reg16(i8* %83, %struct.sh_mobile_lcdc_sys_bus_ops* %84, i32 32, i32 0)
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %88 = call i32 @write_reg16(i8* %86, %struct.sh_mobile_lcdc_sys_bus_ops* %87, i32 33, i32 0)
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %99, %25
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = mul i64 %92, 256
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %98 = call i32 @write_reg16(i8* %96, %struct.sh_mobile_lcdc_sys_bus_ops* %97, i32 34, i32 0)
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %89

102:                                              ; preds = %89
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %105 = call i32 @write_reg16(i8* %103, %struct.sh_mobile_lcdc_sys_bus_ops* %104, i32 32, i32 0)
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %108 = call i32 @write_reg16(i8* %106, %struct.sh_mobile_lcdc_sys_bus_ops* %107, i32 33, i32 0)
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %111 = call i32 @write_reg16(i8* %109, %struct.sh_mobile_lcdc_sys_bus_ops* %110, i32 7, i32 371)
  %112 = call i32 @mdelay(i32 40)
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %7, align 8
  %115 = call i32 @write_reg(i8* %113, %struct.sh_mobile_lcdc_sys_bus_ops* %114, i32 0, i32 34)
  %116 = call i32 @mdelay(i32 100)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %102, %22
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @reset_lcd_module(...) #1

declare dso_local i32 @migor_lcd_qvga_seq(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @read_reg16(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @write_reg16(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_reg(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

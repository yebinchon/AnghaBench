; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_allocate_pins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_cris_io_interface_allocate_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"cris_io_interface_allocate_pins: if=%d port=%c start=%u stop=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"cris_io_interface_allocate_pins: port=%c start=%u stop=%u mask=0x%08x\0A\00", align 1
@gpio_pa_pins = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@gpio_pa_owners = common dso_local global i32* null, align 8
@gpio_pb_pins = common dso_local global i32 0, align 4
@gpio_pb_owners = common dso_local global i32* null, align 8
@gpio_in_pins = common dso_local global i32 0, align 4
@gpio_out_pins = common dso_local global i32 0, align 4
@gpio_pg_owners = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cris_io_interface_allocate_pins(i32 %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (...) @cris_io_interface_init()
  %16 = load i32, i32* %6, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8 signext %17, i32 %19, i32 %20, i32 %21)
  %23 = call i32 @DBG(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 97
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 98
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %36, 8
  br i1 %37, label %48, label %38

38:                                               ; preds = %35, %31
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 103
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %43, 32
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %38, %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %153

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  %51 = call i32 @create_mask(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @create_mask(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i8, i8* %7, align 1
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8 signext %58, i32 %59, i32 %60, i32 %61)
  %63 = call i32 @DBG(i32 %62)
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @local_irq_save(i64 %64)
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %129 [
    i32 97, label %68
    i32 98, label %85
    i32 103, label %102
  ]

68:                                               ; preds = %48
  %69 = load i32, i32* @gpio_pa_pins, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %153

79:                                               ; preds = %68
  %80 = load i32*, i32** @gpio_pa_owners, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @gpio_pa_pins, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @gpio_pa_pins, align 4
  br label %134

85:                                               ; preds = %48
  %86 = load i32, i32* @gpio_pb_pins, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @local_irq_restore(i64 %92)
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %153

96:                                               ; preds = %85
  %97 = load i32*, i32** @gpio_pb_owners, align 8
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* %11, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* @gpio_pb_pins, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* @gpio_pb_pins, align 4
  br label %134

102:                                              ; preds = %48
  %103 = load i32, i32* @gpio_in_pins, align 4
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @gpio_out_pins, align 4
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %102
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @local_irq_restore(i64 %115)
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %153

119:                                              ; preds = %108
  %120 = load i32*, i32** @gpio_pg_owners, align 8
  store i32* %120, i32** %14, align 8
  %121 = load i32, i32* %11, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* @gpio_in_pins, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* @gpio_in_pins, align 4
  %125 = load i32, i32* %11, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* @gpio_out_pins, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* @gpio_out_pins, align 4
  br label %134

129:                                              ; preds = %48
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @local_irq_restore(i64 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %153

134:                                              ; preds = %119, %96, %79
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %146, %134
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ule i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %136

149:                                              ; preds = %136
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @local_irq_restore(i64 %150)
  %152 = call i32 (...) @notify_watchers()
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %129, %114, %91, %74, %45
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @cris_io_interface_init(...) #1

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @printk(i8*, i8 signext, i32, i32, i32) #1

declare dso_local i32 @create_mask(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @notify_watchers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

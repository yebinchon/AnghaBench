; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_set_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@nc_gpreg = common dso_local global i32 0, align 4
@nc_mbox1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32, i32*, i32)* @S24C16_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S24C16_set_bit(%struct.sym_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sym_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 @udelay(i32 5)
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %28 [
    i32 129, label %11
    i32 131, label %16
    i32 128, label %20
    i32 130, label %24
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  br label %28

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 254
  store i32 %19, i32* %17, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 2
  store i32 %23, i32* %21, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 253
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %4, %24, %20, %16, %11
  %29 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %30 = load i32, i32* @nc_gpreg, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OUTB(%struct.sym_device* %29, i32 %30, i32 %32)
  %34 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %35 = load i32, i32* @nc_mbox1, align 4
  %36 = call i32 @INB(%struct.sym_device* %34, i32 %35)
  %37 = call i32 @udelay(i32 5)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @OUTB(%struct.sym_device*, i32, i32) #1

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

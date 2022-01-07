; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@Serial_Command = common dso_local global i32 0, align 4
@XXX_Status = common dso_local global i32 0, align 4
@PROMOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ni_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_read_eeprom(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 256
  %9 = shl i32 %8, 3
  %10 = or i32 768, %9
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = or i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @Serial_Command, align 4
  %15 = call i32 @ni_writeb(i32 4, i32 %14)
  store i32 32768, i32* %5, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  %26 = or i32 4, %25
  %27 = load i32, i32* @Serial_Command, align 4
  %28 = call i32 @ni_writeb(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 0
  %35 = or i32 5, %34
  %36 = load i32, i32* @Serial_Command, align 4
  %37 = call i32 @ni_writeb(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i32 128, i32* %5, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32, i32* @Serial_Command, align 4
  %47 = call i32 @ni_writeb(i32 4, i32 %46)
  %48 = load i32, i32* @Serial_Command, align 4
  %49 = call i32 @ni_writeb(i32 5, i32 %48)
  %50 = load i32, i32* @XXX_Status, align 4
  %51 = call i32 @ni_readb(i32 %50)
  %52 = load i32, i32* @PROMOUT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i32, i32* @Serial_Command, align 4
  %67 = call i32 @ni_writeb(i32 0, i32 %66)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @ni_writeb(i32, i32) #1

declare dso_local i32 @ni_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

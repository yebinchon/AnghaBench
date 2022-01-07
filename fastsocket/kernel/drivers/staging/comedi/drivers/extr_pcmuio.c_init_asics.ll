; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_init_asics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_init_asics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }

@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@ASIC_IOSIZE = common dso_local global i32 0, align 4
@PORTS_PER_ASIC = common dso_local global i32 0, align 4
@REG_PORT0 = common dso_local global i64 0, align 8
@NUM_PAGES = common dso_local global i32 0, align 4
@FIRST_PAGED_REG = common dso_local global i32 0, align 4
@NUM_PAGED_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @init_asics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_asics(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %75, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ASIC_IOSIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @switch_page(%struct.comedi_device* %23, i32 %24, i32 0)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PORTS_PER_ASIC, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @REG_PORT0, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = call i32 @outb(i32 0, i64 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @NUM_PAGES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @switch_page(%struct.comedi_device* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @FIRST_PAGED_REG, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %64, %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FIRST_PAGED_REG, align 4
  %55 = load i32, i32* @NUM_PAGED_REGS, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = call i32 @outb(i32 0, i64 %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @switch_page(%struct.comedi_device* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %8

78:                                               ; preds = %8
  ret void
}

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

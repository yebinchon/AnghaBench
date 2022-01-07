; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_program_chanlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_program_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }
%struct.comedi_cmd = type { i32, i32* }

@QRAM = common dso_local global i32 0, align 4
@DAS1800_SELECT = common dso_local global i64 0, align 8
@DAS1800_QRAM_ADDRESS = common dso_local global i64 0, align 8
@DAS1800_QRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32*)* @program_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_chanlist(%struct.comedi_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_cmd, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.comedi_cmd* %4 to { i32, i32* }*
  %13 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 1
  store i32* %2, i32** %14, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 3, i32* %10, align 4
  store i32 8, i32* %11, align 4
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @QRAM, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DAS1800_SELECT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %21, i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAS1800_QRAM_ADDRESS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 %29, i64 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CR_CHAN(i32 %46)
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CR_RANGE(i32 %53)
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 8
  %57 = or i32 %47, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DAS1800_QRAM, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outw(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DAS1800_QRAM_ADDRESS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

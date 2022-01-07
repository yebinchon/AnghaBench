; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ke_counter.c_cnt_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ke_counter.c_cnt_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cnt_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnt_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = mul nsw i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call zeroext i8 @inb(i64 %26)
  store i8 %27, i8* %9, align 1
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %31, 32
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = add nsw i64 %34, 4
  %36 = call zeroext i8 @inb(i64 %35)
  store i8 %36, i8* %10, align 1
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %40, 32
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = add nsw i64 %43, 8
  %45 = call zeroext i8 @inb(i64 %44)
  store i8 %45, i8* %11, align 1
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %49, 32
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = add nsw i64 %52, 12
  %54 = call zeroext i8 @inb(i64 %53)
  store i8 %54, i8* %12, align 1
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %58, 32
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = add nsw i64 %61, 16
  %63 = call zeroext i8 @inb(i64 %62)
  store i8 %63, i8* %13, align 1
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %67, 256
  %69 = add nsw i32 %65, %68
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %71, 65536
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %15, align 4
  %74 = load i8, i8* %13, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %4
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %77, %4
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  ret i32 1
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

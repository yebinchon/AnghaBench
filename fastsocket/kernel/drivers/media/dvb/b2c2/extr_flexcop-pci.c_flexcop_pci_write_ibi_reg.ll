; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_write_ibi_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_write_ibi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.flexcop_pci* }
%struct.flexcop_pci = type { i64 }
%struct.TYPE_3__ = type { i64 }

@lastwreg = common dso_local global i64 0, align 8
@lastwval = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"new wr: %3x: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, i64, i64)* @flexcop_pci_write_ibi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_write_ibi_reg(%struct.flexcop_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.flexcop_pci*, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i64 %1, i64* %6, align 8
  %9 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %10 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %9, i32 0, i32 0
  %11 = load %struct.flexcop_pci*, %struct.flexcop_pci** %10, align 8
  store %struct.flexcop_pci* %11, %struct.flexcop_pci** %7, align 8
  %12 = load i64, i64* @lastwreg, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @lastwval, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* @lastwreg, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @lastwval, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @deb_reg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %32 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i64 %30, i64 %35)
  ret i32 0
}

declare dso_local i32 @deb_reg(i8*, i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

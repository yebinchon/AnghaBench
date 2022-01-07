; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_fill_scd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_fill_scd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }
%struct.scq_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, %struct.scq_info*, i32)* @fill_scd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_scd(%struct.idt77252_dev* %0, %struct.scq_info* %1, i32 %2) #0 {
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca %struct.scq_info*, align 8
  %6 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %4, align 8
  store %struct.scq_info* %1, %struct.scq_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %8 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %9 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %12 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @write_sram(%struct.idt77252_dev* %7, i64 %10, i32 %13)
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %16 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %17 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @write_sram(%struct.idt77252_dev* %15, i64 %19, i32 0)
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %22 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %23 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 2
  %26 = call i32 @write_sram(%struct.idt77252_dev* %21, i64 %25, i32 -1)
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %28 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %29 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 3
  %32 = call i32 @write_sram(%struct.idt77252_dev* %27, i64 %31, i32 0)
  ret void
}

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

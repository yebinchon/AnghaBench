; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"R [0x%08X] 0x%02X = 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*, i32)* @reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read(%struct.lanai_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.lanai_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @reg_addr(%struct.lanai_dev* %6, i32 %7)
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %11 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @RWDEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @reg_addr(%struct.lanai_dev*, i32) #1

declare dso_local i32 @RWDEBUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

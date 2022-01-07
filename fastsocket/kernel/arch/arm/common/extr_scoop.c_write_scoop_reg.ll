; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_scoop.c_write_scoop_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_scoop.c_write_scoop_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scoop_dev = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_scoop_reg(%struct.device* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.scoop_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.scoop_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.scoop_dev* %9, %struct.scoop_dev** %7, align 8
  %10 = load i16, i16* %6, align 2
  %11 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %12 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @iowrite16(i16 zeroext %10, i64 %16)
  ret void
}

declare dso_local %struct.scoop_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @iowrite16(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_common.c_davinci_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_common.c_davinci_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.memory_accessor = type { i64 (%struct.memory_accessor*, i8*, i32, i64)* }

@davinci_soc_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Read MAC addr from EEPROM: %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @davinci_get_mac_addr(%struct.memory_accessor* %0, i8* %1) #0 {
  %3 = alloca %struct.memory_accessor*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.memory_accessor* %0, %struct.memory_accessor** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @davinci_soc_info, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.memory_accessor*, %struct.memory_accessor** %3, align 8
  %13 = getelementptr inbounds %struct.memory_accessor, %struct.memory_accessor* %12, i32 0, i32 0
  %14 = load i64 (%struct.memory_accessor*, i8*, i32, i64)*, i64 (%struct.memory_accessor*, i8*, i32, i64)** %13, align 8
  %15 = load %struct.memory_accessor*, %struct.memory_accessor** %3, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* @ETH_ALEN, align 8
  %19 = call i64 %14(%struct.memory_accessor* %15, i8* %16, i32 %17, i64 %18)
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_config_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i16, i32 }

@ACT2000_FLAGS_PVALID = common dso_local global i32 0, align 4
@ISA_REGION = common dso_local global i32 0, align 4
@ACT2000_PORTLEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @act2000_isa_config_port(%struct.TYPE_3__* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ACT2000_FLAGS_PVALID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 4
  %16 = load i32, i32* @ISA_REGION, align 4
  %17 = call i32 @release_region(i16 zeroext %15, i32 %16)
  %18 = load i32, i32* @ACT2000_FLAGS_PVALID, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %12, %2
  %25 = load i16, i16* %5, align 2
  %26 = load i32, i32* @ACT2000_PORTLEN, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @request_region(i16 zeroext %25, i32 %26, i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load i16, i16* %5, align 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i16 %36, i16* %38, align 4
  %39 = load i32, i32* @ACT2000_FLAGS_PVALID, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @release_region(i16 zeroext, i32) #1

declare dso_local i32* @request_region(i16 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACT2000_PORTLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"act2000isa\00", align 1
@ISA_REGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @act2000_isa_detect(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  store i32 0, i32* %3, align 4
  %4 = load i16, i16* %2, align 2
  %5 = load i32, i32* @ACT2000_PORTLEN, align 4
  %6 = call i64 @request_region(i16 zeroext %4, i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i16, i16* %2, align 2
  %10 = call i32 @act2000_isa_reset(i16 zeroext %9)
  store i32 %10, i32* %3, align 4
  %11 = load i16, i16* %2, align 2
  %12 = load i32, i32* @ISA_REGION, align 4
  %13 = call i32 @release_region(i16 zeroext %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i64 @request_region(i16 zeroext, i32, i8*) #1

declare dso_local i32 @act2000_isa_reset(i16 zeroext) #1

declare dso_local i32 @release_region(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

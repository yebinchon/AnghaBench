; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-cards.c_cx18_get_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-cards.c_cx18_get_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_card = type { i32 }

@cx18_card_list = common dso_local global %struct.cx18_card** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cx18_card* @cx18_get_card(i64 %0) #0 {
  %2 = alloca %struct.cx18_card*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.cx18_card**, %struct.cx18_card*** @cx18_card_list, align 8
  %6 = call i64 @ARRAY_SIZE(%struct.cx18_card** %5)
  %7 = icmp uge i64 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.cx18_card* null, %struct.cx18_card** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.cx18_card**, %struct.cx18_card*** @cx18_card_list, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.cx18_card*, %struct.cx18_card** %10, i64 %11
  %13 = load %struct.cx18_card*, %struct.cx18_card** %12, align 8
  store %struct.cx18_card* %13, %struct.cx18_card** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.cx18_card*, %struct.cx18_card** %2, align 8
  ret %struct.cx18_card* %15
}

declare dso_local i64 @ARRAY_SIZE(%struct.cx18_card**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_signed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_usage = type { i8**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"calculated from %d to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_usage*, i32)* @pidff_set_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set_signed(%struct.pidff_usage* %0, i32 %1) #0 {
  %3 = alloca %struct.pidff_usage*, align 8
  %4 = alloca i32, align 4
  store %struct.pidff_usage* %0, %struct.pidff_usage** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %6 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %14 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i8* @pidff_rescale_signed(i32 %12, %struct.TYPE_3__* %15)
  %17 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %18 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %16, i8** %20, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %28 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i8* @pidff_rescale(i32 %26, i32 32768, %struct.TYPE_3__* %29)
  %31 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %32 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  br label %45

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %38 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i8* @pidff_rescale(i32 %36, i32 32767, %struct.TYPE_3__* %39)
  %41 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %42 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %35, %24
  br label %46

46:                                               ; preds = %45, %11
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %49 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %52)
  ret void
}

declare dso_local i8* @pidff_rescale_signed(i32, %struct.TYPE_3__*) #1

declare dso_local i8* @pidff_rescale(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @debug(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

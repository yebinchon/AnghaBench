; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_chk_missed_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_chk_missed_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, %struct.tg3_napi* }
%struct.tg3_napi = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_chk_missed_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_chk_missed_msi(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %63, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %5
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 1
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i64 %15
  store %struct.tg3_napi* %16, %struct.tg3_napi** %4, align 8
  %17 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %18 = call i64 @tg3_has_work(%struct.tg3_napi* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %11
  %21 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %22 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %25 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %30 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %33 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %38 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %43 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %48 = call i32 @tg3_msi(i32 0, %struct.tg3_napi* %47)
  br label %49

49:                                               ; preds = %46, %28, %20
  br label %50

50:                                               ; preds = %49, %11
  %51 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %52 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %51, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %54 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %57 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %59 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %62 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %5

66:                                               ; preds = %41, %5
  ret void
}

declare dso_local i64 @tg3_has_work(%struct.tg3_napi*) #1

declare dso_local i32 @tg3_msi(i32, %struct.tg3_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

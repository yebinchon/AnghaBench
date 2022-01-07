; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_setup_csrings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_setup_csrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i64, i32, i8** }

@MAC_TYPE_XAUI = common dso_local global i64 0, align 8
@MAX_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_setup_csrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_setup_csrings(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %4 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %5 = call i8* @pasemi_mac_setup_csring(%struct.pasemi_mac* %4)
  %6 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %7 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %6, i32 0, i32 2
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %5, i8** %9, align 8
  %10 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %11 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAC_TYPE_XAUI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %17 = call i8* @pasemi_mac_setup_csring(%struct.pasemi_mac* %16)
  %18 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %19 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %18, i32 0, i32 2
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %17, i8** %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %24 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* null, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %15
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MAX_CS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %34 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %43 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %28

50:                                               ; preds = %28
  ret void
}

declare dso_local i8* @pasemi_mac_setup_csring(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_resolv_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_resolv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@events = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@names = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_resolv_event(i64 %0, i64 %1, %struct.seq_file* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.seq_file*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %8 = load i8**, i8*** @events, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8**, i8*** @events, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i8* [ %17, %13 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load i8***, i8**** @names, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i8**, i8*** %21, i64 %22
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i8***, i8**** @names, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8**, i8*** %27, i64 %28
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i8***, i8**** @names, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i8**, i8*** %36, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi i8* [ %42, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %43 ]
  br label %47

46:                                               ; preds = %19
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = call i32 @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %48)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

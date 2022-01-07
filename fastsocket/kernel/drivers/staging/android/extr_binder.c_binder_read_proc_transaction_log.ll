; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_read_proc_transaction_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_read_proc_transaction_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_transaction_log = type { i32, i32*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @binder_read_proc_transaction_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_read_proc_transaction_log(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.binder_transaction_log*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.binder_transaction_log*
  store %struct.binder_transaction_log* %20, %struct.binder_transaction_log** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %17, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %18, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %119

29:                                               ; preds = %6
  %30 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %31 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %36 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %60, %34
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %41 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i8*, i8** %17, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = icmp uge i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %63

50:                                               ; preds = %45
  %51 = load i8*, i8** %17, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %54 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i8* @print_binder_transaction_log_entry(i8* %51, i8* %52, i32* %58)
  store i8* %59, i8** %17, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %38

63:                                               ; preds = %49, %38
  br label %64

64:                                               ; preds = %63, %29
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %86, %64
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %68 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp uge i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %89

76:                                               ; preds = %71
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %14, align 8
  %80 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i8* @print_binder_transaction_log_entry(i8* %77, i8* %78, i32* %84)
  store i8* %85, i8** %17, align 8
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %65

89:                                               ; preds = %75, %65
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8**, i8*** %9, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %89
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %15, align 4
  br label %109

108:                                              ; preds = %89
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %108, %104
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  br label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %28
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @print_binder_transaction_log_entry(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

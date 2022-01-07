; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_transaction_log_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_transaction_log_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_transaction_log_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"%d: %s from %d:%d to %d:%d node %d handle %d size %d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.binder_transaction_log_entry*)* @print_binder_transaction_log_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_binder_transaction_log_entry(i8* %0, i8* %1, %struct.binder_transaction_log_entry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.binder_transaction_log_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.binder_transaction_log_entry* %2, %struct.binder_transaction_log_entry** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %15 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %18 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %24 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %29

29:                                               ; preds = %22, %21
  %30 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %21 ], [ %28, %22 ]
  %31 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %32 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %35 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %38 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %41 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %44 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %47 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %50 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %6, align 8
  %53 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snprintf(i8* %7, i32 %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c___is_tr_translated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c___is_tr_translated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thash_data*, i64, i64)* @__is_tr_translated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_tr_translated(%struct.thash_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.thash_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.thash_data* %0, %struct.thash_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  %8 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  %13 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  %20 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  %24 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @PSIZE(i32 %25)
  %27 = icmp slt i64 %22, %26
  br label %28

28:                                               ; preds = %17, %11, %3
  %29 = phi i1 [ false, %11 ], [ false, %3 ], [ %27, %17 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @PSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

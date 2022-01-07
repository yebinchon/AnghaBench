; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thash_data* @vhpt_lookup(i64 %0) #0 {
  %2 = alloca %struct.thash_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.thash_data*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @ia64_thash(i64 %6)
  %8 = inttoptr i64 %7 to %struct.thash_data*
  store %struct.thash_data* %8, %struct.thash_data** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @ia64_ttag(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  %12 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  store %struct.thash_data* %17, %struct.thash_data** %2, align 8
  br label %19

18:                                               ; preds = %1
  store %struct.thash_data* null, %struct.thash_data** %2, align 8
  br label %19

19:                                               ; preds = %18, %16
  %20 = load %struct.thash_data*, %struct.thash_data** %2, align 8
  ret %struct.thash_data* %20
}

declare dso_local i64 @ia64_thash(i64) #1

declare dso_local i64 @ia64_ttag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_mppe_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_mppe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_mppe_state = type { i64, i64, %struct.ppp_mppe_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mppe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mppe_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ppp_mppe_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ppp_mppe_state*
  store %struct.ppp_mppe_state* %5, %struct.ppp_mppe_state** %3, align 8
  %6 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %7 = icmp ne %struct.ppp_mppe_state* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %10 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %9, i32 0, i32 2
  %11 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %10, align 8
  %12 = icmp ne %struct.ppp_mppe_state* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %15 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %14, i32 0, i32 2
  %16 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %15, align 8
  %17 = call i32 @kfree(%struct.ppp_mppe_state* %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %20 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %25 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @crypto_free_hash(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %30 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %35 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @crypto_free_blkcipher(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %40 = call i32 @kfree(%struct.ppp_mppe_state* %39)
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @kfree(%struct.ppp_mppe_state*) #1

declare dso_local i32 @crypto_free_hash(i64) #1

declare dso_local i32 @crypto_free_blkcipher(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

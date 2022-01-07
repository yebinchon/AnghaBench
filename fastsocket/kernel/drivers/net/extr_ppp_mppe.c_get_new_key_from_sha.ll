; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_get_new_key_from_sha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_mppe.c_get_new_key_from_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ppp_mppe_state = type { i32, i32, i32, i32, i32 }
%struct.hash_desc = type { i64, i32 }
%struct.scatterlist = type { i32 }

@sha_pad = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp_mppe_state*)* @get_new_key_from_sha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_new_key_from_sha(%struct.ppp_mppe_state* %0) #0 {
  %2 = alloca %struct.ppp_mppe_state*, align 8
  %3 = alloca %struct.hash_desc, align 8
  %4 = alloca [4 x %struct.scatterlist], align 16
  %5 = alloca i32, align 4
  store %struct.ppp_mppe_state* %0, %struct.ppp_mppe_state** %2, align 8
  %6 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 0
  %7 = call i32 @sg_init_table(%struct.scatterlist* %6, i32 4)
  %8 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 0
  %9 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %10 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %13 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @setup_sg(%struct.scatterlist* %8, i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sha_pad, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @setup_sg(%struct.scatterlist* %16, i32 %19, i32 4)
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 2
  %24 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %25 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %28 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @setup_sg(%struct.scatterlist* %23, i32 %26, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sha_pad, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @setup_sg(%struct.scatterlist* %33, i32 %36, i32 4)
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %41 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %3, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %3, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %4, i64 0, i64 0
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %2, align 8
  %48 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @crypto_hash_digest(%struct.hash_desc* %3, %struct.scatterlist* %45, i32 %46, i32 %49)
  ret void
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @setup_sg(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

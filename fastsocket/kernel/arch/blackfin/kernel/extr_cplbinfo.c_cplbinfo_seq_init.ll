; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_seq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_seq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cplbinfo_data = type { i8, i32, i32, i32 }

@icplb_tbl = common dso_local global i32* null, align 8
@first_switched_icplb = common dso_local global i32 0, align 4
@dcplb_tbl = common dso_local global i32* null, align 8
@first_switched_dcplb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cplbinfo_data*, i32)* @cplbinfo_seq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cplbinfo_seq_init(%struct.cplbinfo_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cplbinfo_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cplbinfo_data* %0, %struct.cplbinfo_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %6 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 4
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 73
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = call i32 (...) @bfin_read_IMEM_CONTROL()
  %12 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %13 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** @icplb_tbl, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %20 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @first_switched_icplb, align 4
  %22 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %23 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %38

24:                                               ; preds = %2
  %25 = call i32 (...) @bfin_read_DMEM_CONTROL()
  %26 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %27 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** @dcplb_tbl, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %34 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @first_switched_dcplb, align 4
  %36 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %3, align 8
  %37 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @bfin_read_IMEM_CONTROL(...) #1

declare dso_local i32 @bfin_read_DMEM_CONTROL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

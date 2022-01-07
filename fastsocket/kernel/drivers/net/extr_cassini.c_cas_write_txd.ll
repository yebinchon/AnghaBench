; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_write_txd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_write_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { %struct.cas_tx_desc** }
%struct.cas_tx_desc = type { i8*, i8* }

@TX_DESC_BUFLEN = common dso_local global i32 0, align 4
@TX_DESC_INTME = common dso_local global i32 0, align 4
@TX_DESC_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32, i32, i32, i32, i32, i32)* @cas_write_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_write_txd(%struct.cas* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cas_tx_desc*, align 8
  store %struct.cas* %0, %struct.cas** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.cas*, %struct.cas** %8, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 0
  %18 = load %struct.cas_tx_desc**, %struct.cas_tx_desc*** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cas_tx_desc*, %struct.cas_tx_desc** %18, i64 %20
  %22 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %22, i64 %24
  store %struct.cas_tx_desc* %25, %struct.cas_tx_desc** %15, align 8
  %26 = load i32, i32* @TX_DESC_BUFLEN, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @CAS_BASE(i32 %26, i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @cas_intme(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %7
  %36 = load i32, i32* @TX_DESC_INTME, align 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %35, %7
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @TX_DESC_EOF, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %13, align 4
  %48 = call i8* @cpu_to_le64(i32 %47)
  %49 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %15, align 8
  %50 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @cpu_to_le64(i32 %51)
  %53 = load %struct.cas_tx_desc*, %struct.cas_tx_desc** %15, align 8
  %54 = getelementptr inbounds %struct.cas_tx_desc, %struct.cas_tx_desc* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  ret void
}

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i64 @cas_intme(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

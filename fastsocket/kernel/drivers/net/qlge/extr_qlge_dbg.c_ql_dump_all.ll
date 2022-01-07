; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_dump_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_dump_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32*, i32* }
%struct.wqicb = type { i32 }
%struct.cqicb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_dump_all(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %4 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %5 = call i32 @QL_DUMP_REGS(%struct.ql_adapter* %4)
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %7 = call i32 @QL_DUMP_QDEV(%struct.ql_adapter* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @QL_DUMP_TX_RING(i32* %20)
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to %struct.wqicb*
  %29 = call i32 @QL_DUMP_WQICB(%struct.wqicb* %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @QL_DUMP_RX_RING(i32* %46)
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = bitcast i32* %53 to %struct.cqicb*
  %55 = call i32 @QL_DUMP_CQICB(%struct.cqicb* %54)
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %34

59:                                               ; preds = %34
  ret void
}

declare dso_local i32 @QL_DUMP_REGS(%struct.ql_adapter*) #1

declare dso_local i32 @QL_DUMP_QDEV(%struct.ql_adapter*) #1

declare dso_local i32 @QL_DUMP_TX_RING(i32*) #1

declare dso_local i32 @QL_DUMP_WQICB(%struct.wqicb*) #1

declare dso_local i32 @QL_DUMP_RX_RING(i32*) #1

declare dso_local i32 @QL_DUMP_CQICB(%struct.cqicb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

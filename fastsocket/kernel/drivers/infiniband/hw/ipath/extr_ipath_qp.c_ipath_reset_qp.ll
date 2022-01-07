; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_reset_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_reset_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, %struct.TYPE_4__, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8*, i8*, i64, i64, i64, i64, i64, i32*, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@IPATH_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_UC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_RC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp*, i32)* @ipath_reset_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_reset_qp(%struct.ipath_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %6 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %5, i32 0, i32 29
  store i64 0, i64* %6, align 8
  %7 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %7, i32 0, i32 28
  store i64 0, i64* %8, align 8
  %9 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %9, i32 0, i32 27
  store i64 0, i64* %10, align 8
  %11 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %11, i32 0, i32 26
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load i32, i32* @IPATH_S_SIGNAL_REQ_WR, align 4
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 25
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %19, i32 0, i32 24
  store i64 0, i64* %20, align 8
  %21 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %21, i32 0, i32 23
  store i32* null, i32** %22, align 8
  %23 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %24 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %23, i32 0, i32 22
  store i64 0, i64* %24, align 8
  %25 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %25, i32 0, i32 21
  store i64 0, i64* %26, align 8
  %27 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %28 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %27, i32 0, i32 20
  store i64 0, i64* %28, align 8
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 19
  store i64 0, i64* %30, align 8
  %31 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %31, i32 0, i32 18
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IB_QPT_RC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %38 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %38, i32 0, i32 17
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %41 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %42 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %41, i32 0, i32 16
  store i8* %40, i8** %42, align 8
  br label %50

43:                                               ; preds = %2
  %44 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %45 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %46 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %45, i32 0, i32 17
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %48 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %49 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %48, i32 0, i32 16
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* @IB_OPCODE_RC_ACKNOWLEDGE, align 4
  %52 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %53 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %55 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %54, i32 0, i32 14
  store i64 0, i64* %55, align 8
  %56 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %57 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %56, i32 0, i32 13
  store i64 0, i64* %57, align 8
  %58 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %59 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %58, i32 0, i32 12
  store i64 0, i64* %59, align 8
  %60 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %61 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  %62 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %63 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %62, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %65 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %67 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %69 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %71 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %73 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %75 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32 %76, i32 0, i32 4)
  %78 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %79 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %81 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %83 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %85 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = icmp ne %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %50
  %90 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %91 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %96 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %50
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

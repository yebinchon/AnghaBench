; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_reset_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_reset_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@QIB_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_UC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_RC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, i32)* @qib_reset_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_reset_qp(%struct.qib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %6 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %5, i32 0, i32 34
  store i64 0, i64* %6, align 8
  %7 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %8 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %7, i32 0, i32 33
  store i64 0, i64* %8, align 8
  %9 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %10 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %9, i32 0, i32 32
  store i64 0, i64* %10, align 8
  %11 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %11, i32 0, i32 31
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load i32, i32* @QIB_S_SIGNAL_REQ_WR, align 4
  %15 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %16 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %15, i32 0, i32 30
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 29
  store i64 0, i64* %20, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 28
  store i32* null, i32** %22, align 8
  %23 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %24 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %23, i32 0, i32 27
  store i64 0, i64* %24, align 8
  %25 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %26 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %25, i32 0, i32 26
  store i64 0, i64* %26, align 8
  %27 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 25
  store i64 0, i64* %28, align 8
  %29 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %30 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %29, i32 0, i32 24
  store i64 0, i64* %30, align 8
  %31 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %32 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %31, i32 0, i32 23
  store i64 0, i64* %32, align 8
  %33 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %34 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %33, i32 0, i32 22
  store i64 0, i64* %34, align 8
  %35 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %36 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %35, i32 0, i32 21
  store i64 0, i64* %36, align 8
  %37 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %38 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %37, i32 0, i32 20
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @IB_QPT_RC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %44 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %45 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %44, i32 0, i32 19
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %47 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %48 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %47, i32 0, i32 18
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %2
  %50 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %51 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %52 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %51, i32 0, i32 19
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %54 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %55 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %54, i32 0, i32 18
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  %57 = load i32, i32* @IB_OPCODE_RC_ACKNOWLEDGE, align 4
  %58 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %59 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %58, i32 0, i32 17
  store i32 %57, i32* %59, align 8
  %60 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %61 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %60, i32 0, i32 16
  store i64 0, i64* %61, align 8
  %62 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %63 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %62, i32 0, i32 15
  store i64 0, i64* %63, align 8
  %64 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %65 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %64, i32 0, i32 14
  store i64 0, i64* %65, align 8
  %66 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %67 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %66, i32 0, i32 13
  store i64 0, i64* %67, align 8
  %68 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %69 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %68, i32 0, i32 12
  store i64 0, i64* %69, align 8
  %70 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %71 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %73 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %75 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  %76 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %79 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %78, i32 0, i32 8
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %81 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %82 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %84 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  %87 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %88 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %90 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %92 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %56
  %99 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %105 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %98, %56
  %110 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %111 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
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

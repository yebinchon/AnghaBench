; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i32, i64 }

@IB_LNH_IBA_GLOBAL = common dso_local global i32 0, align 4
@IB_LNH_IBA_LOCAL = common dso_local global i32 0, align 4
@IB_LRH_BYTES = common dso_local global i32 0, align 4
@IB_BTH_BYTES = common dso_local global i32 0, align 4
@IB_DETH_BYTES = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_ud_header_init(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ib_ud_header* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_ud_header*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ib_ud_header* %6, %struct.ib_ud_header** %14, align 8
  %16 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %17 = call i32 @memset(%struct.ib_ud_header* %16, i32 0, i32 96)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %7
  %21 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %22 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @IB_LNH_IBA_GLOBAL, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @IB_LNH_IBA_LOCAL, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %33 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @IB_LRH_BYTES, align 4
  %36 = load i32, i32* @IB_BTH_BYTES, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @IB_DETH_BYTES, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @IB_GRH_BYTES, align 4
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = add nsw i32 %39, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 4
  %51 = add nsw i32 %50, 3
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i8* @cpu_to_be16(i32 %53)
  %55 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %56 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %45, %7
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @ETH_P_8021Q, align 4
  %63 = call i8* @cpu_to_be16(i32 %62)
  %64 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %65 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %72 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 6, i32* %73, align 8
  %74 = load i32, i32* @IB_BTH_BYTES, align 4
  %75 = load i32, i32* @IB_DETH_BYTES, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 4
  %80 = add nsw i32 %79, 3
  %81 = and i32 %80, -4
  %82 = call i8* @cpu_to_be16(i32 %81)
  %83 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %84 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %87 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 27, i32* %88, align 4
  br label %89

89:                                               ; preds = %70, %67
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %94 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %95 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %89
  %98 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %99 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %100 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 4, %103
  %105 = and i32 %104, 3
  %106 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %107 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %110 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %114 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %117 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %120 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %123 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.ib_ud_header*, %struct.ib_ud_header** %14, align 8
  %126 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ib_ud_header*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_configure_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_configure_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32, i32, i32, %struct.rx_ring*, %struct.tx_ring*, i32, %struct.TYPE_2__* }
%struct.rx_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.ql_adapter* }
%struct.tx_ring = type { i32, i32, i32, i32, %struct.ql_adapter* }
%struct.TYPE_2__ = type { i32 }

@MAX_CPUS = common dso_local global i32 0, align 4
@LARGE_BUFFER_MAX_SIZE = common dso_local global i32 0, align 4
@LARGE_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@NUM_LARGE_BUFFERS = common dso_local global i32 0, align 4
@NUM_SMALL_BUFFERS = common dso_local global i32 0, align 4
@SMALL_BUF_MAP_SIZE = common dso_local global i64 0, align 8
@RX_Q = common dso_local global i32 0, align 4
@TX_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_configure_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_configure_rings(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %8 = load i32, i32* @MAX_CPUS, align 4
  %9 = call i64 (...) @num_online_cpus()
  %10 = trunc i64 %9 to i32
  %11 = call i32 @min(i32 %8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1500
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @LARGE_BUFFER_MAX_SIZE, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @LARGE_BUFFER_MIN_SIZE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_order(i32 %24)
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %32 = call i32 @ql_enable_msix(%struct.ql_adapter* %31)
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %92, %22
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %50
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 7
  %59 = load %struct.tx_ring*, %struct.tx_ring** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %59, i64 %61
  store %struct.tx_ring* %62, %struct.tx_ring** %5, align 8
  %63 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %64 = bitcast %struct.tx_ring* %63 to i8*
  %65 = call i32 @memset(i8* %64, i32 0, i32 24)
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %67 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %67, i32 0, i32 4
  store %struct.ql_adapter* %66, %struct.ql_adapter** %68, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %78 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %84 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %91 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %56
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %50

95:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %204, %95
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %207

102:                                              ; preds = %96
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %103, i32 0, i32 6
  %105 = load %struct.rx_ring*, %struct.rx_ring** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %105, i64 %107
  store %struct.rx_ring* %108, %struct.rx_ring** %4, align 8
  %109 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %110 = bitcast %struct.rx_ring* %109 to i8*
  %111 = call i32 @memset(i8* %110, i32 0, i32 64)
  %112 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %113 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %114 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %113, i32 0, i32 11
  store %struct.ql_adapter* %112, %struct.ql_adapter** %114, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %117 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %6, align 4
  %120 = srem i32 %118, %119
  %121 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %174

128:                                              ; preds = %102
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %133 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %135 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @NUM_LARGE_BUFFERS, align 4
  %143 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %144 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %146 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %152 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %156 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %155, i32 0, i32 10
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @NUM_SMALL_BUFFERS, align 4
  %158 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %159 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  %160 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %161 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %167 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* @SMALL_BUF_MAP_SIZE, align 8
  %169 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %170 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %169, i32 0, i32 9
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* @RX_Q, align 4
  %172 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %173 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 8
  br label %203

174:                                              ; preds = %102
  %175 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %176 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %179 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %181 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %187 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %189 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %188, i32 0, i32 4
  store i32 0, i32* %189, align 8
  %190 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %191 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %190, i32 0, i32 5
  store i32 0, i32* %191, align 4
  %192 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %193 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %192, i32 0, i32 10
  store i64 0, i64* %193, align 8
  %194 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %195 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %194, i32 0, i32 6
  store i32 0, i32* %195, align 8
  %196 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %197 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %196, i32 0, i32 7
  store i32 0, i32* %197, align 4
  %198 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %199 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %198, i32 0, i32 9
  store i64 0, i64* %199, align 8
  %200 = load i32, i32* @TX_Q, align 4
  %201 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %202 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %201, i32 0, i32 8
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %174, %128
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %96

207:                                              ; preds = %96
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @ql_enable_msix(%struct.ql_adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

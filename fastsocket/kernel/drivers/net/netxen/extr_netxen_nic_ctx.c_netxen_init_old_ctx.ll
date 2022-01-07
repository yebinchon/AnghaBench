; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_netxen_init_old_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_netxen_init_old_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, %struct.netxen_recv_context, %struct.nx_host_tx_ring* }
%struct.netxen_recv_context = type { i32, %struct.nx_host_sds_ring*, %struct.nx_host_rds_ring*, %struct.netxen_ring_ctx* }
%struct.nx_host_sds_ring = type { i32, i32 }
%struct.nx_host_rds_ring = type { i32, i32 }
%struct.netxen_ring_ctx = type { i8*, %struct.TYPE_4__*, i8*, i8*, %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.nx_host_tx_ring = type { i32, i32 }

@NETXEN_CTX_SIGNATURE_V2 = common dso_local global i32 0, align 4
@NETXEN_CTX_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_init_old_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_init_old_ctx(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_recv_context*, align 8
  %4 = alloca %struct.nx_host_rds_ring*, align 8
  %5 = alloca %struct.nx_host_sds_ring*, align 8
  %6 = alloca %struct.nx_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netxen_ring_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 4
  %16 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %15, align 8
  store %struct.nx_host_tx_ring* %16, %struct.nx_host_tx_ring** %6, align 8
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %17, i32 0, i32 3
  store %struct.netxen_recv_context* %18, %struct.netxen_recv_context** %3, align 8
  %19 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %20 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %19, i32 0, i32 3
  %21 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %20, align 8
  store %struct.netxen_ring_ctx* %21, %struct.netxen_ring_ctx** %9, align 8
  %22 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le64(i32 %24)
  %26 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %69, %1
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %42 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %41, i32 0, i32 2
  %43 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %43, i64 %45
  store %struct.nx_host_rds_ring* %46, %struct.nx_host_rds_ring** %4, align 8
  %47 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %48 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %50, i8** %57, align 8
  %58 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %59 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* %61, i8** %68, align 8
  br label %69

69:                                               ; preds = %40
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %34

72:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %133, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %136

79:                                               ; preds = %73
  %80 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %81 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %80, i32 0, i32 1
  %82 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %82, i64 %84
  store %struct.nx_host_sds_ring* %85, %struct.nx_host_sds_ring** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %79
  %89 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %90 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %94 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %96 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %100 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %88, %79
  %102 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %103 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le64(i32 %104)
  %106 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i8* %105, i8** %112, align 8
  %113 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %114 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %118 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i8* %116, i8** %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @cpu_to_le16(i32 %124)
  %126 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %127 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %125, i32* %132, align 8
  br label %133

133:                                              ; preds = %101
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %73

136:                                              ; preds = %73
  %137 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %138 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.netxen_ring_ctx*, %struct.netxen_ring_ctx** %9, align 8
  %142 = getelementptr inbounds %struct.netxen_ring_ctx, %struct.netxen_ring_ctx* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i32, i32* @NETXEN_CTX_SIGNATURE_V2, align 4
  br label %151

149:                                              ; preds = %136
  %150 = load i32, i32* @NETXEN_CTX_SIGNATURE, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* %10, align 4
  %153 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @CRB_CTX_ADDR_REG_LO(i32 %154)
  %156 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %157 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @lower32(i32 %158)
  %160 = call i32 @NXWR32(%struct.netxen_adapter* %153, i32 %155, i32 %159)
  %161 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @CRB_CTX_ADDR_REG_HI(i32 %162)
  %164 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %165 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @upper32(i32 %166)
  %168 = call i32 @NXWR32(%struct.netxen_adapter* %161, i32 %163, i32 %167)
  %169 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @CRB_CTX_SIGNATURE_REG(i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @NXWR32(%struct.netxen_adapter* %169, i32 %171, i32 %174)
  ret i32 0
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @CRB_CTX_ADDR_REG_LO(i32) #1

declare dso_local i32 @lower32(i32) #1

declare dso_local i32 @CRB_CTX_ADDR_REG_HI(i32) #1

declare dso_local i32 @upper32(i32) #1

declare dso_local i32 @CRB_CTX_SIGNATURE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

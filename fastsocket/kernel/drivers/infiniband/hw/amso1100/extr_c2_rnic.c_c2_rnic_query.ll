; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_rnic_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32 }
%struct.c2_vq_req = type { i64 }
%struct.c2wr_rnic_query_req = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.c2wr_rnic_query_rep = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.c2wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCWR_RNIC_QUERY = common dso_local global i32 0, align 4
@C2_MIN_PAGESIZE = common dso_local global i32 0, align 4
@C2_MAX_SGES = common dso_local global i32 0, align 4
@C2_MAX_SGE_RD = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, %struct.ib_device_attr*)* @c2_rnic_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_rnic_query(%struct.c2_dev* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca %struct.ib_device_attr*, align 8
  %6 = alloca %struct.c2_vq_req*, align 8
  %7 = alloca %struct.c2wr_rnic_query_req, align 8
  %8 = alloca %struct.c2wr_rnic_query_rep*, align 8
  %9 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %5, align 8
  %10 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %11 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %10)
  store %struct.c2_vq_req* %11, %struct.c2_vq_req** %6, align 8
  %12 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %13 = icmp ne %struct.c2_vq_req* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %235

17:                                               ; preds = %2
  %18 = load i32, i32* @CCWR_RNIC_QUERY, align 4
  %19 = call i32 @c2_wr_set_id(%struct.c2wr_rnic_query_req* %7, i32 %18)
  %20 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %21 = ptrtoint %struct.c2_vq_req* %20 to i64
  %22 = getelementptr inbounds %struct.c2wr_rnic_query_req, %struct.c2wr_rnic_query_req* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %25 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.c2wr_rnic_query_req, %struct.c2wr_rnic_query_req* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %29 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %30 = call i32 @vq_req_get(%struct.c2_dev* %28, %struct.c2_vq_req* %29)
  %31 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %32 = bitcast %struct.c2wr_rnic_query_req* %7 to %union.c2wr*
  %33 = call i32 @vq_send_wr(%struct.c2_dev* %31, %union.c2wr* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %38 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %39 = call i32 @vq_req_put(%struct.c2_dev* %37, %struct.c2_vq_req* %38)
  br label %230

40:                                               ; preds = %17
  %41 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %42 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %43 = call i32 @vq_wait_for_reply(%struct.c2_dev* %41, %struct.c2_vq_req* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %230

47:                                               ; preds = %40
  %48 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %49 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.c2wr_rnic_query_rep*
  store %struct.c2wr_rnic_query_rep* %51, %struct.c2wr_rnic_query_rep** %8, align 8
  %52 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %53 = icmp ne %struct.c2wr_rnic_query_rep* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %47
  %58 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %59 = call i32 @c2_errno(%struct.c2wr_rnic_query_rep* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %226

64:                                               ; preds = %60
  %65 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %66 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = shl i32 %68, 32
  %70 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %71 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = and i32 %73, 65535
  %75 = shl i32 %74, 16
  %76 = or i32 %69, %75
  %77 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %78 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = and i32 %80, 65535
  %82 = or i32 %76, %81
  %83 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 37
  %87 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %88 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32* %86, i32 %91, i32 6)
  %93 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %94 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  %95 = load i32, i32* @C2_MIN_PAGESIZE, align 4
  %96 = sub nsw i32 %95, 1
  %97 = xor i32 %96, -1
  %98 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %99 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %101 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be32_to_cpu(i32 %102)
  %104 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %105 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %107 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be32_to_cpu(i32 %108)
  %110 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %113 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be32_to_cpu(i32 %114)
  %116 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %117 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %119 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be32_to_cpu(i32 %120)
  %122 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %123 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %125 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @be32_to_cpu(i32 %126)
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %131 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %134 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %133, i32 0, i32 36
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @C2_MAX_SGES, align 4
  %136 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %136, i32 0, i32 35
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @C2_MAX_SGE_RD, align 4
  %139 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %140 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %139, i32 0, i32 34
  store i32 %138, i32* %140, align 8
  %141 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %142 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @be32_to_cpu(i32 %143)
  %145 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %146 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  %147 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %148 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be32_to_cpu(i32 %149)
  %151 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %152 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %151, i32 0, i32 9
  store i32 %150, i32* %152, align 4
  %153 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %154 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @be32_to_cpu(i32 %155)
  %157 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %158 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 8
  %159 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %160 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @be32_to_cpu(i32 %161)
  %163 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %164 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %163, i32 0, i32 11
  store i32 %162, i32* %164, align 4
  %165 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %166 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @be32_to_cpu(i32 %167)
  %169 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %170 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %169, i32 0, i32 12
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %172 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %171, i32 0, i32 33
  store i64 0, i64* %172, align 8
  %173 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %174 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @be32_to_cpu(i32 %175)
  %177 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %178 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %177, i32 0, i32 13
  store i32 %176, i32* %178, align 4
  %179 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %180 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @be32_to_cpu(i32 %181)
  %183 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %184 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %183, i32 0, i32 14
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %186 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %185, i32 0, i32 32
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %188 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %189 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %188, i32 0, i32 31
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %191 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %190, i32 0, i32 30
  store i64 0, i64* %191, align 8
  %192 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %193 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %192, i32 0, i32 29
  store i64 0, i64* %193, align 8
  %194 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %195 = getelementptr inbounds %struct.c2wr_rnic_query_rep, %struct.c2wr_rnic_query_rep* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @be32_to_cpu(i32 %196)
  %198 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %199 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %198, i32 0, i32 15
  store i32 %197, i32* %199, align 4
  %200 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %201 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %200, i32 0, i32 28
  store i64 0, i64* %201, align 8
  %202 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %203 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %202, i32 0, i32 27
  store i64 0, i64* %203, align 8
  %204 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %205 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %204, i32 0, i32 26
  store i64 0, i64* %205, align 8
  %206 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %207 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %206, i32 0, i32 25
  store i64 0, i64* %207, align 8
  %208 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %209 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %208, i32 0, i32 24
  store i64 0, i64* %209, align 8
  %210 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %211 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %210, i32 0, i32 23
  store i64 0, i64* %211, align 8
  %212 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %213 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %212, i32 0, i32 22
  store i64 0, i64* %213, align 8
  %214 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %215 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %214, i32 0, i32 21
  store i64 0, i64* %215, align 8
  %216 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %217 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %216, i32 0, i32 20
  store i64 0, i64* %217, align 8
  %218 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %219 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %218, i32 0, i32 19
  store i64 0, i64* %219, align 8
  %220 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %221 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %220, i32 0, i32 18
  store i64 0, i64* %221, align 8
  %222 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %223 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %222, i32 0, i32 17
  store i64 0, i64* %223, align 8
  %224 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %225 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %224, i32 0, i32 16
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %64, %63
  %227 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %228 = load %struct.c2wr_rnic_query_rep*, %struct.c2wr_rnic_query_rep** %8, align 8
  %229 = call i32 @vq_repbuf_free(%struct.c2_dev* %227, %struct.c2wr_rnic_query_rep* %228)
  br label %230

230:                                              ; preds = %226, %46, %36
  %231 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %232 = load %struct.c2_vq_req*, %struct.c2_vq_req** %6, align 8
  %233 = call i32 @vq_req_free(%struct.c2_dev* %231, %struct.c2_vq_req* %232)
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %14
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_rnic_query_req*, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_rnic_query_rep*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_rnic_query_rep*) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

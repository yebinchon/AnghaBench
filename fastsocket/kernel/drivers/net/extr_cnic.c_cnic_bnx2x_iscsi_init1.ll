; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_init1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_iscsi_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kwqe = type { i32 }
%struct.bnx2x = type { i32 }
%struct.iscsi_kwqe_init1 = type { i32, i32, i32, i32, i32, i32 }

@BNX2X_ISCSI_TASK_CONTEXT_SIZE = common dso_local global i32 0, align 4
@BNX2X_ISCSI_MAX_PENDING_R2TS = common dso_local global i32 0, align 4
@BNX2X_ISCSI_R2TQE_SIZE = common dso_local global i32 0, align 4
@BNX2X_ISCSI_HQ_BD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_iscsi_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_init1(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca %struct.kwqe*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.iscsi_kwqe_init1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store %struct.kwqe* %1, %struct.kwqe** %5, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 2
  %14 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  store %struct.cnic_local* %14, %struct.cnic_local** %6, align 8
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bnx2x* @netdev_priv(i32 %17)
  store %struct.bnx2x* %18, %struct.bnx2x** %7, align 8
  %19 = load %struct.kwqe*, %struct.kwqe** %5, align 8
  %20 = bitcast %struct.kwqe* %19 to %struct.iscsi_kwqe_init1*
  store %struct.iscsi_kwqe_init1* %20, %struct.iscsi_kwqe_init1** %8, align 8
  %21 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @BNX2X_ISCSI_TASK_CONTEXT_SIZE, align 4
  %35 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %42 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BNX2X_ISCSI_MAX_PENDING_R2TS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @BNX2X_ISCSI_R2TQE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %49 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BNX2X_ISCSI_HQ_BD_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %56 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %58 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PAGE_ALIGN(i32 %59)
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* @BNX2X_ISCSI_HQ_BD_SIZE, align 4
  %66 = sdiv i32 %64, %65
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %69 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %74 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %261

78:                                               ; preds = %2
  %79 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %80 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @TSTORM_ISCSI_RQ_SIZE_OFFSET(i32 %81)
  %83 = add nsw i64 %80, %82
  %84 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %85 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CNIC_WR16(%struct.cnic_dev* %79, i64 %83, i32 %86)
  %88 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %89 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @TSTORM_ISCSI_PAGE_SIZE_OFFSET(i32 %90)
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = call i32 @CNIC_WR16(%struct.cnic_dev* %88, i64 %92, i32 %93)
  %95 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %96 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @TSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = call i32 @CNIC_WR8(%struct.cnic_dev* %95, i64 %99, i32 %100)
  %102 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %103 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @TSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %108 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CNIC_WR16(%struct.cnic_dev* %102, i64 %106, i32 %109)
  %111 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %112 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @USTORM_ISCSI_RQ_BUFFER_SIZE_OFFSET(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %117 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CNIC_WR16(%struct.cnic_dev* %111, i64 %115, i32 %118)
  %120 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %121 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @USTORM_ISCSI_PAGE_SIZE_OFFSET(i32 %122)
  %124 = add nsw i64 %121, %123
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = call i32 @CNIC_WR16(%struct.cnic_dev* %120, i64 %124, i32 %125)
  %127 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %128 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i64 @USTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32 %129)
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* @PAGE_SHIFT, align 4
  %133 = call i32 @CNIC_WR8(%struct.cnic_dev* %127, i64 %131, i32 %132)
  %134 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %135 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @USTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32 %136)
  %138 = add nsw i64 %135, %137
  %139 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %140 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @CNIC_WR16(%struct.cnic_dev* %134, i64 %138, i32 %141)
  %143 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %144 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i64 @USTORM_ISCSI_RQ_SIZE_OFFSET(i32 %145)
  %147 = add nsw i64 %144, %146
  %148 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %149 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @CNIC_WR16(%struct.cnic_dev* %143, i64 %147, i32 %150)
  %152 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %153 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @USTORM_ISCSI_CQ_SIZE_OFFSET(i32 %154)
  %156 = add nsw i64 %153, %155
  %157 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %158 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @CNIC_WR16(%struct.cnic_dev* %152, i64 %156, i32 %159)
  %161 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %162 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i64 @USTORM_ISCSI_R2TQ_SIZE_OFFSET(i32 %163)
  %165 = add nsw i64 %162, %164
  %166 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %167 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BNX2X_ISCSI_MAX_PENDING_R2TS, align 4
  %170 = mul nsw i32 %168, %169
  %171 = call i32 @CNIC_WR16(%struct.cnic_dev* %161, i64 %165, i32 %170)
  %172 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %173 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i64 @XSTORM_ISCSI_PAGE_SIZE_OFFSET(i32 %174)
  %176 = add nsw i64 %173, %175
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = call i32 @CNIC_WR16(%struct.cnic_dev* %172, i64 %176, i32 %177)
  %179 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %180 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @XSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32 %181)
  %183 = add nsw i64 %180, %182
  %184 = load i32, i32* @PAGE_SHIFT, align 4
  %185 = call i32 @CNIC_WR8(%struct.cnic_dev* %179, i64 %183, i32 %184)
  %186 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %187 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @XSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %192 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @CNIC_WR16(%struct.cnic_dev* %186, i64 %190, i32 %193)
  %195 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %196 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i64 @XSTORM_ISCSI_HQ_SIZE_OFFSET(i32 %197)
  %199 = add nsw i64 %196, %198
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @CNIC_WR16(%struct.cnic_dev* %195, i64 %199, i32 %200)
  %202 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %203 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @XSTORM_ISCSI_SQ_SIZE_OFFSET(i32 %204)
  %206 = add nsw i64 %203, %205
  %207 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %208 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @CNIC_WR16(%struct.cnic_dev* %202, i64 %206, i32 %209)
  %211 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %212 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i64 @XSTORM_ISCSI_R2TQ_SIZE_OFFSET(i32 %213)
  %215 = add nsw i64 %212, %214
  %216 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %217 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @BNX2X_ISCSI_MAX_PENDING_R2TS, align 4
  %220 = mul nsw i32 %218, %219
  %221 = call i32 @CNIC_WR16(%struct.cnic_dev* %211, i64 %215, i32 %220)
  %222 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %223 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i64 @CSTORM_ISCSI_PAGE_SIZE_OFFSET(i32 %224)
  %226 = add nsw i64 %223, %225
  %227 = load i32, i32* @PAGE_SIZE, align 4
  %228 = call i32 @CNIC_WR16(%struct.cnic_dev* %222, i64 %226, i32 %227)
  %229 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %230 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i64 @CSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32 %231)
  %233 = add nsw i64 %230, %232
  %234 = load i32, i32* @PAGE_SHIFT, align 4
  %235 = call i32 @CNIC_WR8(%struct.cnic_dev* %229, i64 %233, i32 %234)
  %236 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %237 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %238 = load i32, i32* %11, align 4
  %239 = call i64 @CSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32 %238)
  %240 = add nsw i64 %237, %239
  %241 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %242 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @CNIC_WR16(%struct.cnic_dev* %236, i64 %240, i32 %243)
  %245 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %246 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i64 @CSTORM_ISCSI_CQ_SIZE_OFFSET(i32 %247)
  %249 = add nsw i64 %246, %248
  %250 = load %struct.iscsi_kwqe_init1*, %struct.iscsi_kwqe_init1** %8, align 8
  %251 = getelementptr inbounds %struct.iscsi_kwqe_init1, %struct.iscsi_kwqe_init1* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @CNIC_WR16(%struct.cnic_dev* %245, i64 %249, i32 %252)
  %254 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %255 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i64 @CSTORM_ISCSI_HQ_SIZE_OFFSET(i32 %256)
  %258 = add nsw i64 %255, %257
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @CNIC_WR16(%struct.cnic_dev* %254, i64 %258, i32 %259)
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %78, %77
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_RQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_PAGE_SIZE_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_RQ_BUFFER_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_PAGE_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_RQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_CQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_R2TQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_PAGE_SIZE_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_HQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_SQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_R2TQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_PAGE_SIZE_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_PAGE_SIZE_LOG_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_NUM_OF_TASKS_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_CQ_SIZE_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_HQ_SIZE_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

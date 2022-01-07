; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_do_user_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_do_user_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ipath_user_info = type { i32 }
%struct.ipath_portdata = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@IPATH_PORT_MASTER_UNINIT = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"piobuf base for port %u is 0x%x, piocnt %u, first pio %u\0A\00", align 1
@ur_rcvegrindextail = common dso_local global i32 0, align 4
@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Wrote port%d egrhead %x from tail regs\0A\00", align 1
@IPATH_NODMA_RTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ipath_user_info*)* @ipath_do_user_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_do_user_init(%struct.file* %0, %struct.ipath_user_info* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.ipath_user_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipath_portdata*, align 8
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.ipath_user_info* %1, %struct.ipath_user_info** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.ipath_portdata* @port_fp(%struct.file* %9)
  store %struct.ipath_portdata* %10, %struct.ipath_portdata** %6, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call i64 @subport_fp(%struct.file* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %16 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IPATH_PORT_MASTER_UNINIT, align 4
  %19 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %20 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %19, i32 0, i32 5
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event_interruptible(i32 %17, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %249

26:                                               ; preds = %2
  %27 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %28 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %27, i32 0, i32 14
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %28, align 8
  store %struct.ipath_devdata* %29, %struct.ipath_devdata** %7, align 8
  %30 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %31 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %36 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %37 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ipath_setrcvhdrsize(%struct.ipath_devdata* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %249

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %46 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %54 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %58 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %65

59:                                               ; preds = %44
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %64 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %67 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %70 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %75 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %79 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %77, %81
  %83 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %84 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %100

85:                                               ; preds = %65
  %86 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %87 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %90 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %93 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = mul nsw i32 %91, %95
  %97 = add nsw i32 %88, %96
  %98 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %99 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %85, %73
  %101 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %102 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %105 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %108 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %103, %111
  %113 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %114 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %113, i32 0, i32 13
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @VERBOSE, align 4
  %116 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %117 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %120 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %119, i32 0, i32 13
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %124 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %127 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, i32, i32, ...) @ipath_cdbg(i32 %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %122, i32 %125, i32 %128)
  %130 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %131 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %132 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %135 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata* %130, i32 %133, i32 %136, i32 0)
  %138 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %139 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %140 = call i32 @ipath_create_rcvhdrq(%struct.ipath_devdata* %138, %struct.ipath_portdata* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %100
  %144 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %145 = call i32 @ipath_create_user_egr(%struct.ipath_portdata* %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %143, %100
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %249

150:                                              ; preds = %146
  %151 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %152 = load i32, i32* @ur_rcvegrindextail, align 4
  %153 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %154 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ipath_read_ureg32(%struct.ipath_devdata* %151, i32 %152, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %158 = load i32, i32* @ur_rcvegrindexhead, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %161 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ipath_write_ureg(%struct.ipath_devdata* %157, i32 %158, i32 %159, i32 %162)
  %164 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %165 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %164, i32 0, i32 3
  store i32 -1, i32* %165, align 4
  %166 = load i32, i32* @VERBOSE, align 4
  %167 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %168 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i32, i8*, i32, i32, ...) @ipath_cdbg(i32 %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %173 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %172, i32 0, i32 12
  store i64 0, i64* %173, align 8
  %174 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %175 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %174, i32 0, i32 11
  store i64 0, i64* %175, align 8
  %176 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %177 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %176, i32 0, i32 10
  store i64 0, i64* %177, align 8
  %178 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %179 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %182 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %184 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %187 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %185, %189
  %191 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %192 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %191, i32 0, i32 3
  %193 = call i32 @set_bit(i64 %190, i64* %192)
  %194 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %195 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @IPATH_NODMA_RTAIL, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %225, label %200

200:                                              ; preds = %150
  %201 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %202 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %207 = call i32 @ipath_clear_rcvhdrtail(%struct.ipath_portdata* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %210 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %211 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %210, i32 0, i32 6
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %216 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %219 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = shl i64 1, %220
  %222 = xor i64 %221, -1
  %223 = and i64 %217, %222
  %224 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %209, i32 %214, i64 %223)
  br label %225

225:                                              ; preds = %208, %150
  %226 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %227 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %228 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %227, i32 0, i32 6
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %233 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %226, i32 %231, i64 %234)
  %236 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %237 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %225
  %241 = load i32, i32* @IPATH_PORT_MASTER_UNINIT, align 4
  %242 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %243 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %242, i32 0, i32 5
  %244 = call i32 @clear_bit(i32 %241, i32* %243)
  %245 = load %struct.ipath_portdata*, %struct.ipath_portdata** %6, align 8
  %246 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %245, i32 0, i32 4
  %247 = call i32 @wake_up(i32* %246)
  br label %248

248:                                              ; preds = %240, %225
  br label %249

249:                                              ; preds = %248, %149, %42, %14
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local %struct.ipath_portdata* @port_fp(%struct.file*) #1

declare dso_local i64 @subport_fp(%struct.file*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipath_setrcvhdrsize(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata*, i32, i32, i32) #1

declare dso_local i32 @ipath_create_rcvhdrq(%struct.ipath_devdata*, %struct.ipath_portdata*) #1

declare dso_local i32 @ipath_create_user_egr(%struct.ipath_portdata*) #1

declare dso_local i32 @ipath_read_ureg32(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_write_ureg(%struct.ipath_devdata*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i64, i64*) #1

declare dso_local i32 @ipath_clear_rcvhdrtail(%struct.ipath_portdata*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

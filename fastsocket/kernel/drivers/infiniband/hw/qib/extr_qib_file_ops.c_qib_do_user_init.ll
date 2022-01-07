; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_do_user_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_do_user_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.qib_user_info = type { i32 }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32, i32, i32, i32, i32, i32 (i32, i32, i32)*, i32, i32 (i32, i32)*, i64 }

@QIB_CTXT_MASTER_UNINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%u:ctxt%u: no 2KB buffers available\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Ctxt%u: would use 4KB bufs, using %u\0A\00", align 1
@TXCHK_CHG_TYPE_USER = common dso_local global i32 0, align 4
@QIB_SENDCTRL_AVAIL_BLIP = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@QIB_RCVCTRL_TIDFLOW_ENB = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_KERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_user_info*)* @qib_do_user_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_do_user_init(%struct.file* %0, %struct.qib_user_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.qib_user_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.qib_user_info* %1, %struct.qib_user_info** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.qib_ctxtdata* @ctxt_fp(%struct.file* %10)
  store %struct.qib_ctxtdata* %11, %struct.qib_ctxtdata** %7, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i64 @subctxt_fp(%struct.file* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %17 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QIB_CTXT_MASTER_UNINIT, align 4
  %20 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %21 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %20, i32 0, i32 4
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event_interruptible(i32 %18, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %220

27:                                               ; preds = %2
  %28 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %29 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %28, i32 0, i32 12
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %29, align 8
  store %struct.qib_devdata* %30, %struct.qib_devdata** %8, align 8
  %31 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %32 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %27
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %49 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %51 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul i32 %52, %53
  %55 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %56 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %74

57:                                               ; preds = %27
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %62 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %64 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul i32 %65, %66
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %67, %70
  %72 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %73 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %57, %43
  %75 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %76 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %79 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %77, %80
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ugt i32 %81, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %74
  %87 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %88 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %100 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @qib_dev_err(%struct.qib_devdata* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @ENOBUFS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %220

105:                                              ; preds = %86
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %107 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %110 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub i32 %108, %111
  %113 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %114 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %116 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %117 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %120 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @qib_dev_err(%struct.qib_devdata* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %105, %74
  %124 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %125 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %128 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = mul i32 %129, %132
  %134 = zext i32 %133 to i64
  %135 = add nsw i64 %126, %134
  %136 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %137 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %136, i32 0, i32 11
  store i64 %135, i64* %137, align 8
  %138 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %139 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %140 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %143 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TXCHK_CHG_TYPE_USER, align 4
  %146 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %147 = call i32 @qib_chg_pioavailkernel(%struct.qib_devdata* %138, i32 %141, i32 %144, i32 %145, %struct.qib_ctxtdata* %146)
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %149 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %148, i32 0, i32 8
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %152 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @QIB_SENDCTRL_AVAIL_BLIP, align 4
  %155 = call i32 %150(i32 %153, i32 %154)
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %157 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %158 = call i32 @qib_create_rcvhdrq(%struct.qib_devdata* %156, %struct.qib_ctxtdata* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %123
  %162 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %163 = call i32 @qib_setup_eagerbufs(%struct.qib_ctxtdata* %162)
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %161, %123
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %209

168:                                              ; preds = %164
  %169 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %170 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %169, i32 0, i32 10
  store i64 0, i64* %170, align 8
  %171 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %172 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %171, i32 0, i32 9
  store i64 0, i64* %172, align 8
  %173 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %174 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %173, i32 0, i32 8
  store i64 0, i64* %174, align 8
  %175 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %176 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %181 = call i32 @qib_clear_rcvhdrtail(%struct.qib_ctxtdata* %180)
  br label %182

182:                                              ; preds = %179, %168
  %183 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %184 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %183, i32 0, i32 6
  %185 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %184, align 8
  %186 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %187 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %190 = load i32, i32* @QIB_RCVCTRL_TIDFLOW_ENB, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %193 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %185(i32 %188, i32 %191, i32 %194)
  %196 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %197 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %182
  %201 = load i32, i32* @QIB_CTXT_MASTER_UNINIT, align 4
  %202 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %203 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %202, i32 0, i32 4
  %204 = call i32 @clear_bit(i32 %201, i32* %203)
  %205 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %206 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %205, i32 0, i32 3
  %207 = call i32 @wake_up(i32* %206)
  br label %208

208:                                              ; preds = %200, %182
  store i32 0, i32* %3, align 4
  br label %222

209:                                              ; preds = %167
  %210 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %211 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %212 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %215 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TXCHK_CHG_TYPE_KERN, align 4
  %218 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %219 = call i32 @qib_chg_pioavailkernel(%struct.qib_devdata* %210, i32 %213, i32 %216, i32 %217, %struct.qib_ctxtdata* %218)
  br label %220

220:                                              ; preds = %209, %94, %15
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %208
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.qib_ctxtdata* @ctxt_fp(%struct.file*) #1

declare dso_local i64 @subctxt_fp(%struct.file*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @qib_chg_pioavailkernel(%struct.qib_devdata*, i32, i32, i32, %struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_create_rcvhdrq(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_setup_eagerbufs(%struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_clear_rcvhdrtail(%struct.qib_ctxtdata*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

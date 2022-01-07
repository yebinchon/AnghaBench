; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_starturbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_starturbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i64, i32, i32, %struct.urb*, %struct.TYPE_10__*, i32, %struct.TYPE_7__ }
%struct.urb = type { i32, i32, %struct.TYPE_11__*, %struct.bc_state*, i32, i8*, i64, i8*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i32*, i32, %struct.bc_state*, %struct.bc_state*, %struct.TYPE_12__*, i64, %struct.urb** }
%struct.TYPE_12__ = type { i64 }

@ISDN_PROTO_L2_HDLC = common dso_local global i64 0, align 8
@INS_flag_hunt = common dso_local global i32 0, align 4
@BAS_INURBS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@BAS_INBUFSIZE = common dso_local global i32 0, align 4
@BAS_NUMFRAMES = common dso_local global i32 0, align 4
@BAS_FRAMETIME = common dso_local global i8* null, align 8
@read_iso_callback = common dso_local global i32 0, align 4
@BAS_MAXFRAME = common dso_local global i32 0, align 4
@DEBUG_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Initial isoc read\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PPP_FLAG = common dso_local global i32 0, align 4
@BAS_OUTURBS = common dso_local global i32 0, align 4
@write_iso_callback = common dso_local global i32 0, align 4
@BAS_OUTBUFSIZE = common dso_local global i32 0, align 4
@BAS_NORMFRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Initial isoc write\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Initial isoc write (free)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*)* @starturbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @starturbs(%struct.bc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca %struct.bas_bc_state*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  %9 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.bas_bc_state*, %struct.bas_bc_state** %11, align 8
  store %struct.bas_bc_state* %12, %struct.bas_bc_state** %4, align 8
  %13 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %14 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISDN_PROTO_L2_HDLC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @INS_flag_hunt, align 4
  %20 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %21 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %26 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %144, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BAS_INURBS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %147

31:                                               ; preds = %27
  %32 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %33 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %32, i32 0, i32 7
  %34 = load %struct.urb**, %struct.urb*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.urb*, %struct.urb** %34, i64 %36
  %38 = load %struct.urb*, %struct.urb** %37, align 8
  store %struct.urb* %38, %struct.urb** %5, align 8
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = icmp ne %struct.urb* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %315

44:                                               ; preds = %31
  %45 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %59 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 3, %61
  %63 = call i32 @usb_rcvisocpipe(i32 %57, i32 %62)
  %64 = load %struct.urb*, %struct.urb** %5, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** @URB_ISO_ASAP, align 8
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %70 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @BAS_INBUFSIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = load %struct.urb*, %struct.urb** %5, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 6
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @BAS_INBUFSIZE, align 4
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @BAS_NUMFRAMES, align 4
  %83 = load %struct.urb*, %struct.urb** %5, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** @BAS_FRAMETIME, align 8
  %86 = load %struct.urb*, %struct.urb** %5, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @read_iso_callback, align 4
  %89 = load %struct.urb*, %struct.urb** %5, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %92 = load %struct.urb*, %struct.urb** %5, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 3
  store %struct.bc_state* %91, %struct.bc_state** %93, align 8
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %131, %44
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @BAS_NUMFRAMES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %134

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BAS_MAXFRAME, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.urb*, %struct.urb** %5, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 8
  %109 = load i32, i32* @BAS_MAXFRAME, align 4
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 4
  %117 = load %struct.urb*, %struct.urb** %5, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 2
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.urb*, %struct.urb** %5, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %98
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %94

134:                                              ; preds = %94
  %135 = load i32, i32* @DEBUG_ISO, align 4
  %136 = load %struct.urb*, %struct.urb** %5, align 8
  %137 = call i32 @dump_urb(i32 %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.urb* %136)
  %138 = load %struct.urb*, %struct.urb** %5, align 8
  %139 = load i32, i32* @GFP_ATOMIC, align 4
  %140 = call i32 @usb_submit_urb(%struct.urb* %138, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %315

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %27

147:                                              ; preds = %27
  %148 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %149 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %148, i32 0, i32 5
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* @PPP_FLAG, align 4
  %152 = call i32 @gigaset_isowbuf_init(%struct.TYPE_12__* %150, i32 %151)
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %268, %147
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @BAS_OUTURBS, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %271

157:                                              ; preds = %153
  %158 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %159 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %158, i32 0, i32 3
  %160 = load %struct.bc_state*, %struct.bc_state** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %160, i64 %162
  %164 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %163, i32 0, i32 3
  %165 = load %struct.urb*, %struct.urb** %164, align 8
  store %struct.urb* %165, %struct.urb** %5, align 8
  %166 = load %struct.urb*, %struct.urb** %5, align 8
  %167 = icmp ne %struct.urb* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  %169 = load i32, i32* @EFAULT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %315

171:                                              ; preds = %157
  %172 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %173 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %172, i32 0, i32 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.urb*, %struct.urb** %5, align 8
  %181 = getelementptr inbounds %struct.urb, %struct.urb* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 8
  %182 = load %struct.urb*, %struct.urb** %5, align 8
  %183 = getelementptr inbounds %struct.urb, %struct.urb* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %186 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 4, %188
  %190 = call i32 @usb_sndisocpipe(i32 %184, i32 %189)
  %191 = load %struct.urb*, %struct.urb** %5, align 8
  %192 = getelementptr inbounds %struct.urb, %struct.urb* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 4
  %193 = load i8*, i8** @URB_ISO_ASAP, align 8
  %194 = load %struct.urb*, %struct.urb** %5, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 7
  store i8* %193, i8** %195, align 8
  %196 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %197 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %196, i32 0, i32 5
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.urb*, %struct.urb** %5, align 8
  %202 = getelementptr inbounds %struct.urb, %struct.urb* %201, i32 0, i32 6
  store i64 %200, i64* %202, align 8
  %203 = load %struct.urb*, %struct.urb** %5, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 0
  store i32 8, i32* %204, align 8
  %205 = load i32, i32* @BAS_NUMFRAMES, align 4
  %206 = load %struct.urb*, %struct.urb** %5, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i8*, i8** @BAS_FRAMETIME, align 8
  %209 = load %struct.urb*, %struct.urb** %5, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 5
  store i8* %208, i8** %210, align 8
  %211 = load i32, i32* @write_iso_callback, align 4
  %212 = load %struct.urb*, %struct.urb** %5, align 8
  %213 = getelementptr inbounds %struct.urb, %struct.urb* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %215 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %214, i32 0, i32 3
  %216 = load %struct.bc_state*, %struct.bc_state** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %216, i64 %218
  %220 = load %struct.urb*, %struct.urb** %5, align 8
  %221 = getelementptr inbounds %struct.urb, %struct.urb* %220, i32 0, i32 3
  store %struct.bc_state* %219, %struct.bc_state** %221, align 8
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %257, %171
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @BAS_NUMFRAMES, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %260

226:                                              ; preds = %222
  %227 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %228 = load %struct.urb*, %struct.urb** %5, align 8
  %229 = getelementptr inbounds %struct.urb, %struct.urb* %228, i32 0, i32 2
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  store i32 %227, i32* %234, align 8
  %235 = load i32, i32* @BAS_NORMFRAME, align 4
  %236 = load %struct.urb*, %struct.urb** %5, align 8
  %237 = getelementptr inbounds %struct.urb, %struct.urb* %236, i32 0, i32 2
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  store i32 %235, i32* %242, align 4
  %243 = load %struct.urb*, %struct.urb** %5, align 8
  %244 = getelementptr inbounds %struct.urb, %struct.urb* %243, i32 0, i32 2
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  store i64 0, i64* %249, align 8
  %250 = load %struct.urb*, %struct.urb** %5, align 8
  %251 = getelementptr inbounds %struct.urb, %struct.urb* %250, i32 0, i32 2
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 2
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %226
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %222

260:                                              ; preds = %222
  %261 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %262 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %261, i32 0, i32 3
  %263 = load %struct.bc_state*, %struct.bc_state** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %263, i64 %265
  %267 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %266, i32 0, i32 2
  store i32 -1, i32* %267, align 4
  br label %268

268:                                              ; preds = %260
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %153

271:                                              ; preds = %153
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %295, %271
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @BAS_OUTURBS, align 4
  %275 = sub nsw i32 %274, 1
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %298

277:                                              ; preds = %272
  %278 = load i32, i32* @DEBUG_ISO, align 4
  %279 = load %struct.urb*, %struct.urb** %5, align 8
  %280 = call i32 @dump_urb(i32 %278, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %279)
  %281 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %282 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %281, i32 0, i32 3
  %283 = load %struct.bc_state*, %struct.bc_state** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %283, i64 %285
  %287 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %286, i32 0, i32 3
  %288 = load %struct.urb*, %struct.urb** %287, align 8
  %289 = load i32, i32* @GFP_ATOMIC, align 4
  %290 = call i32 @usb_submit_urb(%struct.urb* %288, i32 %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %277
  br label %315

294:                                              ; preds = %277
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %7, align 4
  br label %272

298:                                              ; preds = %272
  %299 = load i32, i32* @DEBUG_ISO, align 4
  %300 = load %struct.urb*, %struct.urb** %5, align 8
  %301 = call i32 @dump_urb(i32 %299, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %300)
  %302 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %303 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %302, i32 0, i32 3
  %304 = load %struct.bc_state*, %struct.bc_state** %303, align 8
  %305 = load i32, i32* @BAS_OUTURBS, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %304, i64 %307
  %309 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %310 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %309, i32 0, i32 4
  store %struct.bc_state* %308, %struct.bc_state** %310, align 8
  %311 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %312 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %311, i32 0, i32 1
  store i32* null, i32** %312, align 8
  %313 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %314 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %313, i32 0, i32 2
  store i32 0, i32* %314, align 8
  store i32 0, i32* %2, align 4
  br label %319

315:                                              ; preds = %293, %168, %142, %41
  %316 = load %struct.bas_bc_state*, %struct.bas_bc_state** %4, align 8
  %317 = call i32 @stopurbs(%struct.bas_bc_state* %316)
  %318 = load i32, i32* %8, align 4
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %315, %298
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @dump_urb(i32, i8*, %struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @gigaset_isowbuf_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_sndisocpipe(i32, i32) #1

declare dso_local i32 @stopurbs(%struct.bas_bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

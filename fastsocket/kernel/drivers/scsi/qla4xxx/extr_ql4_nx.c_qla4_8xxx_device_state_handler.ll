; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_state_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_device_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA8XXX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Device state is 0x%x = %s\0A\00", align 1
@MAX_STATES = common dso_local global i64 0, align 8
@qdev_state = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Device Init Failed 0x%x = %s\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@ql4xdontresethba = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = call i32 @qla4_8xxx_update_idc_reg(%struct.scsi_qla_host* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QLA_ERROR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %232

13:                                               ; preds = %1
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %15 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %16 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %14, i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @MAX_STATES, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i8**, i8*** @qdev_state, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8* [ %27, %23 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = call i32 (i32, %struct.scsi_qla_host*, i8*, i64, ...) @ql4_printk(i32 %17, %struct.scsi_qla_host* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19, i8* %30)
  %32 = call i32 @DEBUG2(i32 %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HZ, align 8
  %38 = mul i64 %36, %37
  %39 = add i64 %33, %38
  store i64 %39, i64* %5, align 8
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = bitcast {}** %43 to i32 (%struct.scsi_qla_host*)**
  %45 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %44, align 8
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %47 = call i32 %45(%struct.scsi_qla_host* %46)
  br label %48

48:                                               ; preds = %29, %222
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @time_after_eq(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load i32, i32* @KERN_WARNING, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = load i32, i32* @DRIVER_NAME, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @MAX_STATES, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i8**, i8*** @qdev_state, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i8* [ %66, %62 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = call i32 (i32, %struct.scsi_qla_host*, i8*, i64, ...) @ql4_printk(i32 %54, %struct.scsi_qla_host* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58, i8* %69)
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %72 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %73 = call i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host* %71, i32 %72, i32 133)
  br label %74

74:                                               ; preds = %68, %48
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %76 = load i32, i32* @QLA8XXX_CRB_DEV_STATE, align 4
  %77 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %75, i32 %76)
  store i64 %77, i64* %3, align 8
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @MAX_STATES, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i8**, i8*** @qdev_state, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  br label %90

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i8* [ %88, %84 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %89 ]
  %92 = call i32 (i32, %struct.scsi_qla_host*, i8*, i64, ...) @ql4_printk(i32 %78, %struct.scsi_qla_host* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %80, i8* %91)
  %93 = load i64, i64* %3, align 8
  switch i64 %93, label %202 [
    i64 128, label %94
    i64 134, label %95
    i64 132, label %98
    i64 130, label %116
    i64 131, label %161
    i64 129, label %164
    i64 133, label %182
  ]

94:                                               ; preds = %90
  br label %223

95:                                               ; preds = %90
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %97 = call i32 @qla4_8xxx_device_bootstrap(%struct.scsi_qla_host* %96)
  store i32 %97, i32* %4, align 4
  br label %223

98:                                               ; preds = %90
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = bitcast {}** %102 to i32 (%struct.scsi_qla_host*)**
  %104 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %103, align 8
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %106 = call i32 %104(%struct.scsi_qla_host* %105)
  %107 = call i32 @msleep(i32 1000)
  %108 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %109 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = bitcast {}** %111 to i32 (%struct.scsi_qla_host*)**
  %113 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %112, align 8
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %115 = call i32 %113(%struct.scsi_qla_host* %114)
  br label %222

116:                                              ; preds = %90
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %118 = call i32 @is_qla8032(%struct.scsi_qla_host* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %122 = call i32 @qla4_83xx_need_reset_handler(%struct.scsi_qla_host* %121)
  br label %160

123:                                              ; preds = %116
  %124 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %125 = call i32 @is_qla8022(%struct.scsi_qla_host* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load i32, i32* @ql4xdontresethba, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %127
  %131 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %132 = call i32 @qla4_82xx_need_reset_handler(%struct.scsi_qla_host* %131)
  %133 = load i64, i64* @jiffies, align 8
  %134 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %135 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @HZ, align 8
  %138 = mul i64 %136, %137
  %139 = add i64 %133, %138
  store i64 %139, i64* %5, align 8
  br label %158

140:                                              ; preds = %127
  %141 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %142 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = bitcast {}** %144 to i32 (%struct.scsi_qla_host*)**
  %146 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %145, align 8
  %147 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %148 = call i32 %146(%struct.scsi_qla_host* %147)
  %149 = call i32 @msleep(i32 1000)
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %151 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = bitcast {}** %153 to i32 (%struct.scsi_qla_host*)**
  %155 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %154, align 8
  %156 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %157 = call i32 %155(%struct.scsi_qla_host* %156)
  br label %158

158:                                              ; preds = %140, %130
  br label %159

159:                                              ; preds = %158, %123
  br label %160

160:                                              ; preds = %159, %120
  br label %222

161:                                              ; preds = %90
  %162 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %163 = call i32 @qla4_8xxx_need_qsnt_handler(%struct.scsi_qla_host* %162)
  br label %222

164:                                              ; preds = %90
  %165 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %166 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = bitcast {}** %168 to i32 (%struct.scsi_qla_host*)**
  %170 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %169, align 8
  %171 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %172 = call i32 %170(%struct.scsi_qla_host* %171)
  %173 = call i32 @msleep(i32 1000)
  %174 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %175 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = bitcast {}** %177 to i32 (%struct.scsi_qla_host*)**
  %179 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %178, align 8
  %180 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %181 = call i32 %179(%struct.scsi_qla_host* %180)
  br label %222

182:                                              ; preds = %90
  %183 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %184 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %183, i32 0, i32 1
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = bitcast {}** %186 to i32 (%struct.scsi_qla_host*)**
  %188 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %187, align 8
  %189 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %190 = call i32 %188(%struct.scsi_qla_host* %189)
  %191 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %192 = call i32 @qla4xxx_dead_adapter_cleanup(%struct.scsi_qla_host* %191)
  %193 = load i32, i32* @QLA_ERROR, align 4
  store i32 %193, i32* %4, align 4
  %194 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %195 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = bitcast {}** %197 to i32 (%struct.scsi_qla_host*)**
  %199 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %198, align 8
  %200 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %201 = call i32 %199(%struct.scsi_qla_host* %200)
  br label %223

202:                                              ; preds = %90
  %203 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %204 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %203, i32 0, i32 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = bitcast {}** %206 to i32 (%struct.scsi_qla_host*)**
  %208 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %207, align 8
  %209 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %210 = call i32 %208(%struct.scsi_qla_host* %209)
  %211 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %212 = call i32 @qla4xxx_dead_adapter_cleanup(%struct.scsi_qla_host* %211)
  %213 = load i32, i32* @QLA_ERROR, align 4
  store i32 %213, i32* %4, align 4
  %214 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %215 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %214, i32 0, i32 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = bitcast {}** %217 to i32 (%struct.scsi_qla_host*)**
  %219 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %218, align 8
  %220 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %221 = call i32 %219(%struct.scsi_qla_host* %220)
  br label %223

222:                                              ; preds = %164, %161, %160, %98
  br label %48

223:                                              ; preds = %202, %182, %95, %94
  %224 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %225 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %224, i32 0, i32 1
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = bitcast {}** %227 to i32 (%struct.scsi_qla_host*)**
  %229 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %228, align 8
  %230 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %231 = call i32 %229(%struct.scsi_qla_host* %230)
  br label %232

232:                                              ; preds = %223, %12
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @qla4_8xxx_update_idc_reg(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64, ...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @qla4_8xxx_wr_direct(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla4_8xxx_device_bootstrap(%struct.scsi_qla_host*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_need_reset_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_need_reset_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_need_qsnt_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_dead_adapter_cleanup(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

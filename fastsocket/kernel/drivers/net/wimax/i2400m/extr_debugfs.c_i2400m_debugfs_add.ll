; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_debugfs.c_i2400m_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_debugfs.c_i2400m_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"i2400m\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dl_\00", align 1
@control = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@debugfs = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@netdev = common dso_local global i32 0, align 4
@rfkill = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"tx_in\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't create debugfs entry tx_in: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tx_out\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Can't create debugfs entry tx_out: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Can't create debugfs entry state: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"trace_msg_from_user\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Can't create debugfs entry trace_msg_from_user: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"netdev_queue_stopped\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Can't create debugfs entry netdev_queue_stopped: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"rx_stats\00", align 1
@i2400m_rx_stats_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"Can't create debugfs entry rx_stats: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"tx_stats\00", align 1
@i2400m_tx_stats_fops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"Can't create debugfs entry tx_stats: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Can't create debugfs entry suspend: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Can't create debugfs entry reset: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_debugfs_add(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = call %struct.device* @i2400m_dev(%struct.i2400m* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %10 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.dentry* %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call i64 @IS_ERR(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20
  br label %221

27:                                               ; preds = %1
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 4
  store %struct.dentry* %28, %struct.dentry** %30, align 8
  %31 = load i32, i32* @control, align 4
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.dentry* %32)
  %34 = load i32, i32* @driver, align 4
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34, %struct.dentry* %35)
  %37 = load i32, i32* @debugfs, align 4
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.dentry* %38)
  %40 = load i32, i32* @fw, align 4
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40, %struct.dentry* %41)
  %43 = load i32, i32* @netdev, align 4
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43, %struct.dentry* %44)
  %46 = load i32, i32* @rfkill, align 4
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.dentry* %47)
  %49 = load i32, i32* @rx, align 4
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49, %struct.dentry* %50)
  %52 = load i32, i32* @tx, align 4
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.dentry* %53)
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %57 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %56, i32 0, i32 3
  %58 = call %struct.dentry* @debugfs_create_size_t(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %55, i32* %57)
  store %struct.dentry* %58, %struct.dentry** %6, align 8
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.dentry* %59)
  store i32 %60, i32* %3, align 4
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = call i64 @IS_ERR(%struct.dentry* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %27
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %221

73:                                               ; preds = %64, %27
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %76 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %75, i32 0, i32 2
  %77 = call %struct.dentry* @debugfs_create_size_t(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 256, %struct.dentry* %74, i32* %76)
  store %struct.dentry* %77, %struct.dentry** %6, align 8
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = call i32 @PTR_ERR(%struct.dentry* %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = call i64 @IS_ERR(%struct.dentry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %221

92:                                               ; preds = %83, %73
  %93 = load %struct.dentry*, %struct.dentry** %5, align 8
  %94 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %95 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %94, i32 0, i32 1
  %96 = call %struct.dentry* @debugfs_create_u32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 384, %struct.dentry* %93, i32* %95)
  store %struct.dentry* %96, %struct.dentry** %6, align 8
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = call i32 @PTR_ERR(%struct.dentry* %97)
  store i32 %98, i32* %3, align 4
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call i64 @IS_ERR(%struct.dentry* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %221

111:                                              ; preds = %102, %92
  %112 = load %struct.dentry*, %struct.dentry** %5, align 8
  %113 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %114 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %113, i32 0, i32 0
  %115 = call %struct.dentry* @debugfs_create_u8(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 384, %struct.dentry* %112, i32* %114)
  store %struct.dentry* %115, %struct.dentry** %6, align 8
  %116 = load %struct.dentry*, %struct.dentry** %6, align 8
  %117 = call i32 @PTR_ERR(%struct.dentry* %116)
  store i32 %117, i32* %3, align 4
  %118 = load %struct.dentry*, %struct.dentry** %6, align 8
  %119 = call i64 @IS_ERR(%struct.dentry* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  br label %221

130:                                              ; preds = %121, %111
  %131 = load %struct.dentry*, %struct.dentry** %5, align 8
  %132 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %133 = call %struct.dentry* @debugfs_create_netdev_queue_stopped(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), %struct.dentry* %131, %struct.i2400m* %132)
  store %struct.dentry* %133, %struct.dentry** %6, align 8
  %134 = load %struct.dentry*, %struct.dentry** %6, align 8
  %135 = call i32 @PTR_ERR(%struct.dentry* %134)
  store i32 %135, i32* %3, align 4
  %136 = load %struct.dentry*, %struct.dentry** %6, align 8
  %137 = call i64 @IS_ERR(%struct.dentry* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %130
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  br label %221

148:                                              ; preds = %139, %130
  %149 = load %struct.dentry*, %struct.dentry** %5, align 8
  %150 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %151 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 384, %struct.dentry* %149, %struct.i2400m* %150, i32* @i2400m_rx_stats_fops)
  store %struct.dentry* %151, %struct.dentry** %6, align 8
  %152 = load %struct.dentry*, %struct.dentry** %6, align 8
  %153 = call i32 @PTR_ERR(%struct.dentry* %152)
  store i32 %153, i32* %3, align 4
  %154 = load %struct.dentry*, %struct.dentry** %6, align 8
  %155 = call i64 @IS_ERR(%struct.dentry* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %148
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %164)
  br label %221

166:                                              ; preds = %157, %148
  %167 = load %struct.dentry*, %struct.dentry** %5, align 8
  %168 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %169 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 384, %struct.dentry* %167, %struct.i2400m* %168, i32* @i2400m_tx_stats_fops)
  store %struct.dentry* %169, %struct.dentry** %6, align 8
  %170 = load %struct.dentry*, %struct.dentry** %6, align 8
  %171 = call i32 @PTR_ERR(%struct.dentry* %170)
  store i32 %171, i32* %3, align 4
  %172 = load %struct.dentry*, %struct.dentry** %6, align 8
  %173 = call i64 @IS_ERR(%struct.dentry* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %182)
  br label %221

184:                                              ; preds = %175, %166
  %185 = load %struct.dentry*, %struct.dentry** %5, align 8
  %186 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %187 = call %struct.dentry* @debugfs_create_i2400m_suspend(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.dentry* %185, %struct.i2400m* %186)
  store %struct.dentry* %187, %struct.dentry** %6, align 8
  %188 = load %struct.dentry*, %struct.dentry** %6, align 8
  %189 = call i32 @PTR_ERR(%struct.dentry* %188)
  store i32 %189, i32* %3, align 4
  %190 = load %struct.dentry*, %struct.dentry** %6, align 8
  %191 = call i64 @IS_ERR(%struct.dentry* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %184
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @ENODEV, align 4
  %196 = sub nsw i32 0, %195
  %197 = icmp ne i32 %194, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i32 %200)
  br label %221

202:                                              ; preds = %193, %184
  %203 = load %struct.dentry*, %struct.dentry** %5, align 8
  %204 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %205 = call %struct.dentry* @debugfs_create_i2400m_reset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), %struct.dentry* %203, %struct.i2400m* %204)
  store %struct.dentry* %205, %struct.dentry** %6, align 8
  %206 = load %struct.dentry*, %struct.dentry** %6, align 8
  %207 = call i32 @PTR_ERR(%struct.dentry* %206)
  store i32 %207, i32* %3, align 4
  %208 = load %struct.dentry*, %struct.dentry** %6, align 8
  %209 = call i64 @IS_ERR(%struct.dentry* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %202
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @ENODEV, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @dev_err(%struct.device* %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %218)
  br label %221

220:                                              ; preds = %211, %202
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %216, %198, %180, %162, %144, %126, %107, %88, %69, %26
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @__debugfs_register(i8*, i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_size_t(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_netdev_queue_stopped(i8*, %struct.dentry*, %struct.i2400m*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.i2400m*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_i2400m_suspend(i8*, %struct.dentry*, %struct.i2400m*) #1

declare dso_local %struct.dentry* @debugfs_create_i2400m_reset(i8*, %struct.dentry*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_vars_part_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_vars_part_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.xpc_partition = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32, i64, i64, i32, i32, %struct.amo* }
%struct.amo = type { i32 }
%struct.xpc_vars_part_sn2 = type { i64, i64, i64, i64, i64, i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@sn_partition_id = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"failed to pull XPC vars_part from partition %d, ret=%d\0A\00", align 1
@XPC_VP_MAGIC1_SN2 = common dso_local global i64 0, align 8
@XPC_VP_MAGIC2_SN2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"partition %d's XPC vars_part for partition %d has bad magic value (=0x%llx)\0A\00", align 1
@xpBadMagic = common dso_local global i32 0, align 4
@xpRetry = common dso_local global i32 0, align 4
@xpc_vars_part_sn2 = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"partition %d's XPC vars_part for partition %d are not valid\0A\00", align 1
@xpInvalidAddress = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_pull_remote_vars_part_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_pull_remote_vars_part_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_partition_sn2*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xpc_vars_part_sn2*, align 8
  %8 = alloca %struct.xpc_vars_part_sn2*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.xpc_partition_sn2* %16, %struct.xpc_partition_sn2** %4, align 8
  %17 = load i32, i32* @L1_CACHE_BYTES, align 4
  %18 = mul nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @L1_CACHE_ALIGN(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.xpc_vars_part_sn2*
  store %struct.xpc_vars_part_sn2* %25, %struct.xpc_vars_part_sn2** %7, align 8
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %27 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %26)
  store i16 %27, i16* %11, align 2
  %28 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %29 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %32 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @L1_CACHE_ALIGN(i32 %33)
  %35 = icmp ne i32 %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @DBUG_ON(i32 %36)
  %38 = load i32, i32* @L1_CACHE_BYTES, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 48, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @DBUG_ON(i32 %42)
  %44 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %45 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* @sn_partition_id, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 48
  %51 = add i64 %47, %50
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* @L1_CACHE_BYTES, align 4
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = sext i32 %55 to i64
  %57 = and i64 %52, %56
  store i64 %57, i64* %9, align 8
  %58 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %7, align 8
  %59 = ptrtoint %struct.xpc_vars_part_sn2* %58 to i32
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* @L1_CACHE_BYTES, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = and i64 %61, %64
  %66 = add i64 %60, %65
  %67 = inttoptr i64 %66 to %struct.xpc_vars_part_sn2*
  store %struct.xpc_vars_part_sn2* %67, %struct.xpc_vars_part_sn2** %8, align 8
  %68 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %69 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* @L1_CACHE_BYTES, align 4
  %72 = call i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition* %68, %struct.xpc_vars_part_sn2* %69, i64 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @xpSuccess, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %1
  %77 = load i32, i32* @xpc_chan, align 4
  %78 = load i16, i16* %11, align 2
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i32, i8*, i16, i32, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i16 signext %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

82:                                               ; preds = %1
  %83 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %84 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XPC_VP_MAGIC1_SN2, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %90 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @XPC_VP_MAGIC2_SN2, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %96 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32, i32* @xpc_chan, align 4
  %101 = load i16, i16* %11, align 2
  %102 = load i32, i32* @sn_partition_id, align 4
  %103 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %104 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, i8*, i16, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i16 signext %101, i32 %102, i64 %105)
  %107 = load i32, i32* @xpBadMagic, align 4
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

108:                                              ; preds = %94
  %109 = load i32, i32* @xpRetry, align 4
  store i32 %109, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

110:                                              ; preds = %88, %82
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_vars_part_sn2, align 8
  %112 = load i16, i16* %11, align 2
  %113 = sext i16 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XPC_VP_MAGIC1_SN2, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %188

119:                                              ; preds = %110
  %120 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %121 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %126 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %131 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129, %124, %119
  %135 = load i32, i32* @xpc_chan, align 4
  %136 = load i16, i16* %11, align 2
  %137 = load i32, i32* @sn_partition_id, align 4
  %138 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i16 signext %136, i32 %137)
  %139 = load i32, i32* @xpInvalidAddress, align 4
  store i32 %139, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

140:                                              ; preds = %129
  %141 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %142 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %145 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %147 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %150 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %152 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @__va(i64 %153)
  %155 = inttoptr i64 %154 to %struct.amo*
  %156 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %157 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %156, i32 0, i32 5
  store %struct.amo* %155, %struct.amo** %157, align 8
  %158 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %159 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %162 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %164 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %167 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %169 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %172 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %140
  %176 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %177 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %180 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %140
  %182 = load i64, i64* @XPC_VP_MAGIC2_SN2, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_vars_part_sn2, align 8
  %184 = load i16, i16* %11, align 2
  %185 = sext i16 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i64 %182, i64* %187, align 8
  br label %188

188:                                              ; preds = %181, %110
  %189 = load %struct.xpc_vars_part_sn2*, %struct.xpc_vars_part_sn2** %8, align 8
  %190 = getelementptr inbounds %struct.xpc_vars_part_sn2, %struct.xpc_vars_part_sn2* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @XPC_VP_MAGIC1_SN2, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @xpRetry, align 4
  store i32 %195, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @xpSuccess, align 4
  store i32 %197, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %198

198:                                              ; preds = %196, %194, %134, %108, %99, %76
  %199 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #2

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #2

declare dso_local i32 @DBUG_ON(i32) #2

declare dso_local i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition*, %struct.xpc_vars_part_sn2*, i64, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i16 signext, i32, ...) #2

declare dso_local i32 @dev_err(i32, i8*, i16 signext, i32) #2

declare dso_local i64 @__va(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

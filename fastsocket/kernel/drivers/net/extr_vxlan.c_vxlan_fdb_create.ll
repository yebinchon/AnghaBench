; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i64, i64, i32 }
%struct.vxlan_fdb = type { i32, i64, i32, i32*, i32, i8*, i8* }

@NLM_F_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"lost race to create %pM\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLM_F_APPEND = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"add %pM -> %pI4\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i32*, i32, i32, i32, i32, i32, i32, i64)* @vxlan_fdb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_create(%struct.vxlan_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.vxlan_fdb*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev* %24, i32* %25)
  store %struct.vxlan_fdb* %26, %struct.vxlan_fdb** %20, align 8
  %27 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %28 = icmp ne %struct.vxlan_fdb* %27, null
  br i1 %28, label %29, label %137

29:                                               ; preds = %9
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @NLM_F_EXCL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %36 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 (i32, i8*, i32*, ...) @netdev_dbg(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %236

42:                                               ; preds = %29
  %43 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %44 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %51 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** @jiffies, align 8
  %53 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %54 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  store i32 1, i32* %21, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %57 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %19, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i64, i64* %19, align 8
  %63 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %64 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i8*, i8** @jiffies, align 8
  %66 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %67 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  store i32 1, i32* %21, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @NLM_F_REPLACE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %75 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @is_multicast_ether_addr(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %73
  %80 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %81 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @is_zero_ether_addr(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %79
  %86 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @vxlan_fdb_replace(%struct.vxlan_fdb* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %10, align 4
  br label %236

96:                                               ; preds = %85
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %21, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %21, align 4
  br label %103

100:                                              ; preds = %79, %73
  %101 = load i32, i32* @EOPNOTSUPP, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %236

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %68
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @NLM_F_APPEND, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %104
  %110 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %111 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @is_multicast_ether_addr(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %117 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @is_zero_ether_addr(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115, %109
  %122 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @vxlan_fdb_append(%struct.vxlan_fdb* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %23, align 4
  store i32 %131, i32* %10, align 4
  br label %236

132:                                              ; preds = %121
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %21, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %21, align 4
  br label %136

136:                                              ; preds = %132, %115, %104
  br label %227

137:                                              ; preds = %9
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @NLM_F_CREATE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %236

145:                                              ; preds = %137
  %146 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %147 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %152 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %155 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, i32* @ENOSPC, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %10, align 4
  br label %236

161:                                              ; preds = %150, %145
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @NLM_F_REPLACE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i32*, i32** %12, align 8
  %168 = call i64 @is_multicast_ether_addr(i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32*, i32** %12, align 8
  %172 = call i64 @is_zero_ether_addr(i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170, %166
  %175 = load i32, i32* @EOPNOTSUPP, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %236

177:                                              ; preds = %170, %161
  %178 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %179 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 (i32, i8*, i32*, ...) @netdev_dbg(i32 %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %181, i32* %13)
  %183 = load i32, i32* @GFP_ATOMIC, align 4
  %184 = call %struct.vxlan_fdb* @kmalloc(i32 56, i32 %183)
  store %struct.vxlan_fdb* %184, %struct.vxlan_fdb** %20, align 8
  %185 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %186 = icmp ne %struct.vxlan_fdb* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %177
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %10, align 4
  br label %236

190:                                              ; preds = %177
  store i32 1, i32* %21, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %193 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %196 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load i8*, i8** @jiffies, align 8
  %198 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %199 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  %200 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %201 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %200, i32 0, i32 6
  store i8* %197, i8** %201, align 8
  %202 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %203 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %202, i32 0, i32 4
  %204 = call i32 @INIT_LIST_HEAD(i32* %203)
  %205 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %206 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* @ETH_ALEN, align 4
  %210 = call i32 @memcpy(i32* %207, i32* %208, i32 %209)
  %211 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @vxlan_fdb_append(%struct.vxlan_fdb* %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %218 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %222 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %221, i32 0, i32 2
  %223 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @vxlan_fdb_head(%struct.vxlan_dev* %223, i32* %224)
  %226 = call i32 @hlist_add_head_rcu(i32* %222, i32 %225)
  br label %227

227:                                              ; preds = %190, %136
  %228 = load i32, i32* %21, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %232 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %20, align 8
  %233 = load i32, i32* @RTM_NEWNEIGH, align 4
  %234 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %231, %struct.vxlan_fdb* %232, i32 %233)
  br label %235

235:                                              ; preds = %230, %227
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %235, %187, %174, %158, %142, %130, %100, %94, %34
  %237 = load i32, i32* %10, align 4
  ret i32 %237
}

declare dso_local %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev*, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, ...) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @vxlan_fdb_replace(%struct.vxlan_fdb*, i32, i32, i32, i32) #1

declare dso_local i32 @vxlan_fdb_append(%struct.vxlan_fdb*, i32, i32, i32, i32) #1

declare dso_local %struct.vxlan_fdb* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32) #1

declare dso_local i32 @vxlan_fdb_head(%struct.vxlan_dev*, i32*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

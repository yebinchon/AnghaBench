; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_check_parent_topology.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_check_parent_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_2__*, i32, %struct.expander_device }
%struct.TYPE_2__ = type { i32, %struct.expander_device }
%struct.expander_device = type { i32, i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32, i32 }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@SUBTRACTIVE_ROUTING = common dso_local global i32 0, align 4
@TABLE_ROUTING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_check_parent_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_check_parent_topology(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.expander_device*, align 8
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ex_phy*, align 8
  %9 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 3
  store %struct.expander_device* %11, %struct.expander_device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %210

17:                                               ; preds = %1
  %18 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 129
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %26 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %210

32:                                               ; preds = %24, %17
  %33 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %34 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.expander_device* %36, %struct.expander_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %205, %32
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %40 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %208

43:                                               ; preds = %37
  %44 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %45 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %44, i32 0, i32 2
  %46 = load %struct.ex_phy*, %struct.ex_phy** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %46, i64 %48
  store %struct.ex_phy* %49, %struct.ex_phy** %8, align 8
  %50 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %51 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_VACANT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %57 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %43
  br label %205

62:                                               ; preds = %55
  %63 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %64 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @SAS_ADDR(i32 %65)
  %67 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @SAS_ADDR(i32 %69)
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %205

73:                                               ; preds = %62
  %74 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %75 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %74, i32 0, i32 2
  %76 = load %struct.ex_phy*, %struct.ex_phy** %75, align 8
  %77 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %78 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %76, i64 %79
  store %struct.ex_phy* %80, %struct.ex_phy** %9, align 8
  %81 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %82 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %203 [
    i32 129, label %86
    i32 128, label %183
  ]

86:                                               ; preds = %73
  %87 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %88 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %93 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %99 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TABLE_ROUTING, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97, %91
  %104 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %105 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %106 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %107 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %104, %struct.ex_phy* %105, %struct.ex_phy* %106)
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %97
  br label %182

111:                                              ; preds = %86
  %112 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %113 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %111
  %118 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %119 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %125 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %126 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %127 = call i32 @sas_check_eeds(%struct.domain_device* %124, %struct.ex_phy* %125, %struct.ex_phy* %126)
  store i32 %127, i32* %7, align 4
  br label %142

128:                                              ; preds = %117
  %129 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %130 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TABLE_ROUTING, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %136 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %137 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %138 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %135, %struct.ex_phy* %136, %struct.ex_phy* %137)
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %134, %128
  br label %142

142:                                              ; preds = %141, %123
  br label %181

143:                                              ; preds = %111
  %144 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %145 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TABLE_ROUTING, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %180

149:                                              ; preds = %143
  %150 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %151 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %171, label %155

155:                                              ; preds = %149
  %156 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %157 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @TABLE_ROUTING, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %163 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %168 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %149
  br label %179

172:                                              ; preds = %166, %161, %155
  %173 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %174 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %175 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %176 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %173, %struct.ex_phy* %174, %struct.ex_phy* %175)
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %172, %171
  br label %180

180:                                              ; preds = %179, %143
  br label %181

181:                                              ; preds = %180, %142
  br label %182

182:                                              ; preds = %181, %110
  br label %204

183:                                              ; preds = %73
  %184 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %185 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @TABLE_ROUTING, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %191 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %189, %183
  %196 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %197 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %198 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %199 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %196, %struct.ex_phy* %197, %struct.ex_phy* %198)
  %200 = load i32, i32* @ENODEV, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %195, %189
  br label %204

203:                                              ; preds = %73
  br label %204

204:                                              ; preds = %203, %202, %182
  br label %205

205:                                              ; preds = %204, %72, %61
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %37

208:                                              ; preds = %37
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %31, %16
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_print_parent_topology_bug(%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*) #1

declare dso_local i32 @sas_check_eeds(%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

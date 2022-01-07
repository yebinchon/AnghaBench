; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_order_controllers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_order_controllers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@ips_ha = common dso_local global %struct.TYPE_4__** null, align 8
@ips_num_controllers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ips_order_controllers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_order_controllers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %211

11:                                               ; preds = %0
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %120

23:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %116, %23
  %25 = load i32, i32* %1, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %25, %30
  br i1 %31, label %32, label %119

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %112, %32
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @ips_num_controllers, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %115

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %110 [
    i32 130, label %46
    i32 129, label %46
    i32 137, label %62
    i32 135, label %62
    i32 134, label %62
    i32 136, label %62
    i32 131, label %78
    i32 132, label %78
    i32 133, label %78
    i32 128, label %78
    i32 142, label %94
    i32 141, label %94
    i32 143, label %94
    i32 144, label %94
    i32 139, label %94
    i32 140, label %94
    i32 138, label %94
  ]

46:                                               ; preds = %38, %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 77
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ips_shift_controllers(i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %46
  br label %111

62:                                               ; preds = %38, %38, %38, %38
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 78
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @ips_shift_controllers(i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %62
  br label %111

78:                                               ; preds = %38, %38, %38, %38
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 83
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @ips_shift_controllers(i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %78
  br label %111

94:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 65
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @ips_shift_controllers(i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %94
  br label %111

110:                                              ; preds = %38
  br label %111

111:                                              ; preds = %110, %109, %93, %77, %61
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %34

115:                                              ; preds = %34
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %1, align 4
  br label %24

119:                                              ; preds = %24
  br label %211

120:                                              ; preds = %11
  store i32 0, i32* %3, align 4
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %151, %120
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* @ips_num_controllers, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %127, i64 %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 132
  br i1 %134, label %144, label %135

135:                                              ; preds = %126
  %136 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %136, i64 %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 133
  br i1 %143, label %144, label %150

144:                                              ; preds = %135, %126
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @ips_shift_controllers(i32 %145, i32 %146)
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %135
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %1, align 4
  br label %122

154:                                              ; preds = %122
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  br label %211

158:                                              ; preds = %154
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %1, align 4
  br label %160

160:                                              ; preds = %207, %158
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* @ips_num_controllers, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %210

164:                                              ; preds = %160
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %166 = load i32, i32* %1, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %165, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 137
  br i1 %172, label %200, label %173

173:                                              ; preds = %164
  %174 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %174, i64 %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 135
  br i1 %181, label %200, label %182

182:                                              ; preds = %173
  %183 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %183, i64 %185
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 136
  br i1 %190, label %200, label %191

191:                                              ; preds = %182
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ips_ha, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %192, i64 %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 134
  br i1 %199, label %200, label %206

200:                                              ; preds = %191, %182, %173, %164
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %1, align 4
  %203 = call i32 @ips_shift_controllers(i32 %201, i32 %202)
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %200, %191
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %1, align 4
  br label %160

210:                                              ; preds = %160
  br label %211

211:                                              ; preds = %210, %157, %119, %10
  ret void
}

declare dso_local i32 @ips_shift_controllers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

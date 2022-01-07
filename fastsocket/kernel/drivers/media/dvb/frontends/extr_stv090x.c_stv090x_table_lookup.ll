; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_table_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_tab = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_tab*, i32, i32)* @stv090x_table_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_table_lookup(%struct.stv090x_tab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv090x_tab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stv090x_tab* %0, %struct.stv090x_tab** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %11, i64 %13
  %15 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %10, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %20, i64 %22
  %24 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %29, i64 %31
  %33 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %28, %34
  br i1 %35, label %36, label %140

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %38, i64 %40
  %42 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %45, label %140

45:                                               ; preds = %36, %18
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %96

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %57, i64 %59
  %61 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %56, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %66, i64 %68
  %70 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %65, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %64, %51
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %75, i64 %77
  %79 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %74, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %84, i64 %86
  %88 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %83, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82, %64
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %5, align 4
  br label %95

93:                                               ; preds = %82, %73
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %46

96:                                               ; preds = %46
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %98, i64 %100
  %102 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %97, %103
  %105 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %105, i64 %107
  %109 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %111, i64 %113
  %115 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %110, %116
  %118 = mul nsw i32 %104, %117
  %119 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %119, i64 %121
  %123 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %125, i64 %127
  %129 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %124, %130
  %132 = sdiv i32 %118, %131
  %133 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %133, i64 %135
  %137 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %132, %138
  store i32 %139, i32* %7, align 4
  br label %223

140:                                              ; preds = %36, %27
  %141 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %141, i64 %143
  %145 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %147, i64 %149
  %151 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %146, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %140
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %156, i64 %158
  %160 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %155, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %154
  %164 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %164, i64 %166
  %168 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %7, align 4
  br label %187

170:                                              ; preds = %154
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %172, i64 %174
  %176 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %171, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %170
  %180 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %180, i64 %182
  %184 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %179, %170
  br label %187

187:                                              ; preds = %186, %163
  br label %222

188:                                              ; preds = %140
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %190, i64 %192
  %194 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %189, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %188
  %198 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %198, i64 %200
  %202 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %7, align 4
  br label %221

204:                                              ; preds = %188
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %206, i64 %208
  %210 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %205, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.stv090x_tab*, %struct.stv090x_tab** %4, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %214, i64 %216
  %218 = getelementptr inbounds %struct.stv090x_tab, %struct.stv090x_tab* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %213, %204
  br label %221

221:                                              ; preds = %220, %197
  br label %222

222:                                              ; preds = %221, %187
  br label %223

223:                                              ; preds = %222, %96
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"mpsc_hw_init[%d]: Initializing hardware\0A\00", align 1
@MPSC_MRR = common dso_local global i64 0, align 8
@MPSC_RCRR = common dso_local global i64 0, align 8
@MPSC_TCRR = common dso_local global i64 0, align 8
@MPSC_MMCRL = common dso_local global i64 0, align 8
@MPSC_MMCRH = common dso_local global i64 0, align 8
@MPSC_CHR_1 = common dso_local global i64 0, align 8
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@MPSC_CHR_3 = common dso_local global i64 0, align 8
@MPSC_CHR_4 = common dso_local global i64 0, align 8
@MPSC_CHR_5 = common dso_local global i64 0, align 8
@MPSC_CHR_6 = common dso_local global i64 0, align 8
@MPSC_CHR_7 = common dso_local global i64 0, align 8
@MPSC_CHR_8 = common dso_local global i64 0, align 8
@MPSC_CHR_9 = common dso_local global i64 0, align 8
@MPSC_CHR_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_hw_init(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %4 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %5 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %10 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %79

13:                                               ; preds = %1
  %14 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %15 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %14, i32 0, i32 6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -456
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %23 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %22, i32 0, i32 6
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %28 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %27, i32 0, i32 6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MPSC_MRR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %26, i64 %33)
  %35 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %36 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, -3856
  %42 = or i32 %41, 256
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %45 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %44, i32 0, i32 6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %50 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %49, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MPSC_RCRR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %48, i64 %55)
  %57 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %58 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %57, i32 0, i32 6
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, -3856
  %64 = or i32 %63, 256
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %67 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %66, i32 0, i32 6
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %72 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %71, i32 0, i32 6
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MPSC_TCRR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %70, i64 %77)
  br label %139

79:                                               ; preds = %1
  %80 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %81 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %80, i32 0, i32 6
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MPSC_MRR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, -456
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %92 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %91, i32 0, i32 6
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MPSC_MRR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %90, i64 %97)
  %99 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %100 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %99, i32 0, i32 6
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MPSC_RCRR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, -3856
  %109 = or i32 %108, 256
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %112 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %111, i32 0, i32 6
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MPSC_RCRR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %110, i64 %117)
  %119 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %120 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %119, i32 0, i32 6
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MPSC_TCRR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl(i64 %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, -3856
  %129 = or i32 %128, 256
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %132 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %131, i32 0, i32 6
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MPSC_TCRR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %130, i64 %137)
  br label %139

139:                                              ; preds = %79, %13
  %140 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %141 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MPSC_MMCRL, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 1220, i64 %144)
  %146 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %147 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MPSC_MMCRH, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 71304192, i64 %150)
  %152 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %153 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %154 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @mpsc_set_baudrate(%struct.mpsc_port_info* %152, i32 %155)
  %157 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %158 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %139
  %162 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %163 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  %164 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %165 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %161, %139
  %167 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %168 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @MPSC_CHR_1, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 0, i64 %171)
  %173 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %174 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @MPSC_CHR_2, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 0, i64 %177)
  %179 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %180 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %183 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MPSC_CHR_3, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 %181, i64 %186)
  %188 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %189 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @MPSC_CHR_4, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @writel(i32 0, i64 %192)
  %194 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %195 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MPSC_CHR_5, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writel(i32 0, i64 %198)
  %200 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %201 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MPSC_CHR_6, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 0, i64 %204)
  %206 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %207 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @MPSC_CHR_7, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writel(i32 0, i64 %210)
  %212 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %213 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MPSC_CHR_8, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 0, i64 %216)
  %218 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %219 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @MPSC_CHR_9, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @writel(i32 0, i64 %222)
  %224 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %225 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @MPSC_CHR_10, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 0, i64 %228)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mpsc_set_baudrate(%struct.mpsc_port_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

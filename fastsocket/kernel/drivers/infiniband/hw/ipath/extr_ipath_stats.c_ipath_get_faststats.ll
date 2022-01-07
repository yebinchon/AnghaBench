; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_get_faststats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_get_faststats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i64, i32, i32, i32, %struct.ipath_portdata**, i64, %struct.TYPE_4__*, i32, i64, i64, %struct.TYPE_3__*, i32, i32, i32 }
%struct.ipath_portdata = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ipath_get_faststats.cnt = internal global i32 0, align 4
@IPATH_INITTED = common dso_local global i32 0, align 4
@ipath_diag_inuse = common dso_local global i64 0, align 8
@IPATH_TRAFFIC_ACTIVE_THRESHOLD = common dso_local global i64 0, align 8
@IPATH_32BITCOUNTERS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INFINIPATH_E_RRCVEGRFULL = common dso_local global i32 0, align 4
@INFINIPATH_E_RRCVHDRFULL = common dso_local global i32 0, align 4
@INFINIPATH_E_PKTERRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Re-enabling masked errors (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Re-enabling queue full errors (%s)\0A\00", align 1
@ERRPKT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Re-enabling packet problem interrupt (%s)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_get_faststats(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipath_portdata*, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.ipath_devdata*
  store %struct.ipath_devdata* %11, %struct.ipath_devdata** %3, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IPATH_INITTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i64, i64* @ipath_diag_inuse, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %16, %1
  br label %210

27:                                               ; preds = %23
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 11
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ipath_snap_cntr(%struct.ipath_devdata* %28, i32 %33)
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 11
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ipath_snap_cntr(%struct.ipath_devdata* %35, i32 %40)
  %42 = add nsw i64 %34, %41
  store i64 %42, i64* %6, align 8
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 12
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @IPATH_TRAFFIC_ACTIVE_THRESHOLD, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %27
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %62 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %61, i32 0, i32 13
  %63 = call i32 @atomic_add(i32 5, i32* %62)
  br label %64

64:                                               ; preds = %60, %27
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %65, i32 0, i32 12
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %70 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IPATH_32BITCOUNTERS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %77 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %78 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %77, i32 0, i32 11
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ipath_snap_cntr(%struct.ipath_devdata* %76, i32 %81)
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 11
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ipath_snap_cntr(%struct.ipath_devdata* %83, i32 %88)
  br label %90

90:                                               ; preds = %75, %64
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %92 = call i32 @ipath_qcheck(%struct.ipath_devdata* %91)
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %99 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %98, i32 0, i32 10
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %102 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %107 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %106, i32 0, i32 9
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %110 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %173

113:                                              ; preds = %108
  %114 = load i64, i64* @jiffies, align 8
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %116 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @time_after(i64 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %173

120:                                              ; preds = %113
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %123 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %124 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ipath_decode_err(%struct.ipath_devdata* %121, i8* %122, i32 256, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %128 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @INFINIPATH_E_RRCVEGRFULL, align 4
  %131 = load i32, i32* @INFINIPATH_E_RRCVHDRFULL, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @INFINIPATH_E_PKTERRS, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = and i32 %129, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %120
  %139 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %141 = call i32 @ipath_dev_err(%struct.ipath_devdata* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %140)
  br label %153

142:                                              ; preds = %120
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %147 = call i32 @ipath_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  br label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @ERRPKT, align 4
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %151 = call i32 @ipath_cdbg(i32 %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %145
  br label %153

153:                                              ; preds = %152, %138
  %154 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %155 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %158 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %162 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %163 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %162, i32 0, i32 7
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %168 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %161, i32 %166, i32 %169)
  %171 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %172 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %171, i32 0, i32 2
  store i32 0, i32* %172, align 8
  br label %173

173:                                              ; preds = %153, %113, %108
  %174 = load i32, i32* @ipath_get_faststats.cnt, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* @ipath_get_faststats.cnt, align 4
  %176 = and i32 %175, 16
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %207

178:                                              ; preds = %173
  %179 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %180 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %205, %178
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %4, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %183
  %188 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %189 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %188, i32 0, i32 5
  %190 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %190, i64 %192
  %194 = load %struct.ipath_portdata*, %struct.ipath_portdata** %193, align 8
  store %struct.ipath_portdata* %194, %struct.ipath_portdata** %9, align 8
  %195 = load %struct.ipath_portdata*, %struct.ipath_portdata** %9, align 8
  %196 = icmp ne %struct.ipath_portdata* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %187
  %198 = load %struct.ipath_portdata*, %struct.ipath_portdata** %9, align 8
  %199 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.ipath_portdata*, %struct.ipath_portdata** %9, align 8
  %204 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %203, i32 0, i32 0
  store i32 -1, i32* %204, align 4
  br label %205

205:                                              ; preds = %202, %197, %187
  br label %183

206:                                              ; preds = %183
  br label %207

207:                                              ; preds = %206, %173
  %208 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %209 = call i32 @ipath_chk_errormask(%struct.ipath_devdata* %208)
  br label %210

210:                                              ; preds = %207, %26
  %211 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %212 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %211, i32 0, i32 4
  %213 = load i64, i64* @jiffies, align 8
  %214 = load i32, i32* @HZ, align 4
  %215 = mul nsw i32 %214, 5
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %213, %216
  %218 = call i32 @mod_timer(i32* %212, i64 %217)
  ret void
}

declare dso_local i64 @ipath_snap_cntr(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_qcheck(%struct.ipath_devdata*) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @ipath_decode_err(%struct.ipath_devdata*, i8*, i32, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i8*) #1

declare dso_local i32 @ipath_dbg(i8*, i8*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i8*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_chk_errormask(%struct.ipath_devdata*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

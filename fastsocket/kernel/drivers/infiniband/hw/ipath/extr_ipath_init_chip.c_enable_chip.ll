; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_enable_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_enable_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32*, %struct.TYPE_4__**, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ipath_state_wait = common dso_local global i32 0, align 4
@INFINIPATH_S_PIOENABLE = common dso_local global i32 0, align 4
@INFINIPATH_S_PIOBUFAVAILUPD = common dso_local global i32 0, align 4
@INFINIPATH_S_UPDTHRESH_SHIFT = common dso_local global i32 0, align 4
@IPATH_NODMA_RTAIL = common dso_local global i32 0, align 4
@IPATH_INITTED = common dso_local global i32 0, align 4
@ur_rcvegrindextail = common dso_local global i32 0, align 4
@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@IPATH_SWAP_PIOBUFS = common dso_local global i32 0, align 4
@IPATH_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32)* @enable_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chip(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @init_waitqueue_head(i32* @ipath_state_wait)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %15, i32 %20, i32 %23)
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 13
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* @INFINIPATH_S_PIOENABLE, align 4
  %30 = load i32, i32* @INFINIPATH_S_PIOBUFAVAILUPD, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %14
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @INFINIPATH_S_UPDTHRESH_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %38, %14
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 12
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %49, i32 %54, i32 %57)
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 12
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %59, i32 %64)
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %67 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %66, i32 0, i32 13
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 1, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %75, %78
  %80 = or i32 %74, %79
  %81 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %82 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %86 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IPATH_NODMA_RTAIL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %48
  %92 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %93 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 1, %94
  %96 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %97 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = or i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  br label %102

102:                                              ; preds = %91, %48
  %103 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 12
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %110 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %103, i32 %108, i32 %111)
  %113 = load i32, i32* @IPATH_INITTED, align 4
  %114 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %115 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %119 = load i32, i32* @ur_rcvegrindextail, align 4
  %120 = call i32 @ipath_read_ureg32(%struct.ipath_devdata* %118, i32 %119, i32 0)
  store i32 %120, i32* %5, align 4
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %122 = load i32, i32* @ur_rcvegrindexhead, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @ipath_write_ureg(%struct.ipath_devdata* %121, i32 %122, i32 %123, i32 0)
  %125 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %126 = load i32, i32* @ur_rcvhdrhead, align 4
  %127 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %128 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %131 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %130, i32 0, i32 11
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %129, %136
  %138 = call i32 @ipath_write_ureg(%struct.ipath_devdata* %125, i32 %126, i32 %137, i32 0)
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %181, %102
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %184

145:                                              ; preds = %139
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %146, 3
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %150 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IPATH_SWAP_PIOBUFS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %157 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %156, i32 0, i32 10
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = xor i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %9, align 4
  br label %172

164:                                              ; preds = %148, %145
  %165 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %166 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %165, i32 0, i32 10
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %164, %155
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @le64_to_cpu(i32 %173)
  %175 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %176 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %175, i32 0, i32 9
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %139

184:                                              ; preds = %139
  %185 = load i32, i32* @IPATH_PRESENT, align 4
  %186 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %187 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_read_ureg32(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_write_ureg(%struct.ipath_devdata*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

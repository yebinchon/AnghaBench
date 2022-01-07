; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.scsi_cd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.scsi_cd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.scsi_cd* @scsi_cd(i32 %25)
  store %struct.scsi_cd* %26, %struct.scsi_cd** %8, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @driver_byte(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %157

30:                                               ; preds = %19
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 127
  %37 = icmp eq i32 %36, 112
  br i1 %37, label %38, label %157

38:                                               ; preds = %30
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %155 [
    i32 130, label %44
    i32 128, label %44
    i32 131, label %44
    i32 129, label %153
  ]

44:                                               ; preds = %38, %38, %38
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 144
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %156

53:                                               ; preds = %44
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 24
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = or i32 %59, %65
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %66, %72
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %7, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %53
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @bio_sectors(i32* %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %53
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 4, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %100 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2048
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i64, i64* %7, align 8
  %107 = shl i64 %106, 2
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 1
  %111 = xor i32 %110, -1
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %7, align 8
  %114 = and i64 %113, %112
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 @blk_rq_pos(%struct.TYPE_4__* %118)
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %115, %120
  %122 = shl i64 %121, 9
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %108
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %108
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %126
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %134 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @get_capacity(i32 %135)
  %137 = icmp slt i64 %132, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %140 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %7, align 8
  %144 = sub nsw i64 %142, %143
  %145 = icmp slt i64 %144, 300
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.scsi_cd*, %struct.scsi_cd** %8, align 8
  %148 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @set_capacity(i32 %149, i64 %150)
  br label %152

152:                                              ; preds = %146, %138, %131
  br label %156

153:                                              ; preds = %38
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %5, align 4
  br label %156

155:                                              ; preds = %38
  br label %156

156:                                              ; preds = %155, %153, %152, %52
  br label %157

157:                                              ; preds = %156, %30, %19
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scsi_cd* @scsi_cd(i32) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @bio_sectors(i32*) #1

declare dso_local i32 @blk_rq_pos(%struct.TYPE_4__*) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i32 @set_capacity(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

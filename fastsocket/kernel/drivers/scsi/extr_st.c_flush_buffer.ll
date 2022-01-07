; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i32, %struct.st_buffer*, %struct.st_partstat*, i64 }
%struct.st_buffer = type { i32, i32 }
%struct.st_partstat = type { i64, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@ST_READY = common dso_local global i64 0, align 8
@ST_WRITING = common dso_local global i64 0, align 8
@ST_FM_HIT = common dso_local global i64 0, align 8
@ST_NOEOF = common dso_local global i8* null, align 8
@MTBSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_buffer(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_buffer*, align 8
  %9 = alloca %struct.st_partstat*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %10, i32 0, i32 3
  %12 = load %struct.st_buffer*, %struct.st_buffer** %11, align 8
  store %struct.st_buffer* %12, %struct.st_buffer** %8, align 8
  %13 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %158

20:                                               ; preds = %2
  %21 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ST_READY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %158

27:                                               ; preds = %20
  %28 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %28, i32 0, i32 4
  %30 = load %struct.st_partstat*, %struct.st_partstat** %29, align 8
  %31 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %30, i64 %33
  store %struct.st_partstat* %34, %struct.st_partstat** %9, align 8
  %35 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %36 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ST_WRITING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %42 = call i32 @st_flush_write_buffer(%struct.scsi_tape* %41)
  store i32 %42, i32* %3, align 4
  br label %158

43:                                               ; preds = %27
  %44 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %158

49:                                               ; preds = %43
  %50 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %50, i32 0, i32 3
  %52 = load %struct.st_buffer*, %struct.st_buffer** %51, align 8
  %53 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %55, i32 0, i32 3
  %57 = load %struct.st_buffer*, %struct.st_buffer** %56, align 8
  %58 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %60, %63
  %65 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %65, i32 0, i32 3
  %67 = load %struct.st_buffer*, %struct.st_buffer** %66, align 8
  %68 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %74, %77
  %79 = sub nsw i32 %64, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %80, i32 0, i32 3
  %82 = load %struct.st_buffer*, %struct.st_buffer** %81, align 8
  %83 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %85 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %84, i32 0, i32 3
  %86 = load %struct.st_buffer*, %struct.st_buffer** %85, align 8
  %87 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  store i32 0, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %132, label %90

90:                                               ; preds = %49
  %91 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %92 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ST_FM_HIT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %98 = call i32 @cross_eof(%struct.scsi_tape* %97, i32 0)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** @ST_NOEOF, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %105 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %119

106:                                              ; preds = %96
  %107 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %108 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %113 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %118 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %101
  br label %120

120:                                              ; preds = %119, %90
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %128 = load i32, i32* @MTBSR, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @st_int_ioctl(%struct.scsi_tape* %127, i32 %128, i32 %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %126, %123, %120
  br label %156

132:                                              ; preds = %49
  %133 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %134 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ST_FM_HIT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %140 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %145 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %150 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load i8*, i8** @ST_NOEOF, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.st_partstat*, %struct.st_partstat** %9, align 8
  %154 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %148, %132
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %48, %40, %26, %17
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @st_flush_write_buffer(%struct.scsi_tape*) #1

declare dso_local i32 @cross_eof(%struct.scsi_tape*, i32) #1

declare dso_local i32 @st_int_ioctl(%struct.scsi_tape*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

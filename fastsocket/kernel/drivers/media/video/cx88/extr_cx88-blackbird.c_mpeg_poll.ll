; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_mpeg_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_mpeg_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx8802_fh* }
%struct.cx8802_fh = type { i32, %struct.cx8802_dev* }
%struct.cx8802_dev = type { i32 }
%struct.poll_table_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @mpeg_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.cx8802_fh*, align 8
  %6 = alloca %struct.cx8802_dev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.cx8802_fh*, %struct.cx8802_fh** %8, align 8
  store %struct.cx8802_fh* %9, %struct.cx8802_fh** %5, align 8
  %10 = load %struct.cx8802_fh*, %struct.cx8802_fh** %5, align 8
  %11 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %10, i32 0, i32 1
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %11, align 8
  store %struct.cx8802_dev* %12, %struct.cx8802_dev** %6, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = load %struct.cx8802_fh*, %struct.cx8802_fh** %5, align 8
  %20 = call i32 @blackbird_start_codec(%struct.file* %18, %struct.cx8802_fh* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.cx8802_fh*, %struct.cx8802_fh** %5, align 8
  %24 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %23, i32 0, i32 0
  %25 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %26 = call i32 @videobuf_poll_stream(%struct.file* %22, i32* %24, %struct.poll_table_struct* %25)
  ret i32 %26
}

declare dso_local i32 @blackbird_start_codec(%struct.file*, %struct.cx8802_fh*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

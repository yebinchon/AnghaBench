; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_outbound_buffer_frontier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_outbound_buffer_frontier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"out empty:%1d %02x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out primed:%1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*)* @get_outbound_buffer_frontier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_outbound_buffer_frontier(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = call i64 @queue_type(%struct.qdio_q* %6)
  %8 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %12 = call i32 @pci_out_supported(%struct.qdio_q* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10, %1
  %15 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %16 = call i64 @queue_type(%struct.qdio_q* %15)
  %17 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %21 = call i64 @multicast_outbound(%struct.qdio_q* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %10
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %24)
  br label %26

26:                                               ; preds = %23, %19, %14
  %27 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 4
  %29 = call i32 @atomic_read(i32* %28)
  %30 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i8* @add_buf(i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %39 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %145

44:                                               ; preds = %26
  %45 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %46 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %47 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @get_buf_states(%struct.qdio_q* %45, i32 %48, i8* %5, i32 %49, i32 0, i32 1)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %145

54:                                               ; preds = %44
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  switch i32 %56, label %142 [
    i32 128, label %57
    i32 132, label %59
    i32 131, label %92
    i32 133, label %119
    i32 129, label %141
    i32 130, label %141
  ]

57:                                               ; preds = %54
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %54, %57
  %60 = load i32, i32* @DBF_INFO, align 4
  %61 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %65 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i32, %struct.TYPE_4__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %60, %struct.TYPE_4__* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %71 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %70, i32 0, i32 4
  %72 = call i32 @atomic_sub(i32 %69, i32* %71)
  %73 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i8* @add_buf(i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %82 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %59
  %88 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @account_sbals(%struct.qdio_q* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %59
  br label %144

92:                                               ; preds = %54
  %93 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @process_buffer_error(%struct.qdio_q* %93, i32 %94)
  %96 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %97 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i8* @add_buf(i32 %98, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %103 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %106 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %105, i32 0, i32 4
  %107 = call i32 @atomic_sub(i32 %104, i32* %106)
  %108 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %109 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %92
  %115 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @account_sbals_error(%struct.qdio_q* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %92
  br label %144

119:                                              ; preds = %54
  %120 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %121 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %128 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %119
  %133 = load i32, i32* @DBF_INFO, align 4
  %134 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %135 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %138 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, %struct.TYPE_4__*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %133, %struct.TYPE_4__* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %144

141:                                              ; preds = %54, %54
  br label %144

142:                                              ; preds = %54
  %143 = call i32 (...) @BUG()
  br label %144

144:                                              ; preds = %142, %141, %132, %118, %91
  br label %145

145:                                              ; preds = %144, %53, %43
  %146 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %147 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  ret i32 %148
}

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @pci_out_supported(%struct.qdio_q*) #1

declare dso_local i64 @multicast_outbound(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i8* @add_buf(i32, i32) #1

declare dso_local i32 @get_buf_states(%struct.qdio_q*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @account_sbals(%struct.qdio_q*, i32) #1

declare dso_local i32 @process_buffer_error(%struct.qdio_q*, i32) #1

declare dso_local i32 @account_sbals_error(%struct.qdio_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

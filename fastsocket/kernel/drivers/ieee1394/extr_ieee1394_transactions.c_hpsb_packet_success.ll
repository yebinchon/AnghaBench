; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_packet_success.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_packet_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32*, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"received reserved rcode %d from node %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TCODE_WRITEQ = common dso_local global i32 0, align 4
@TCODE_WRITEB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"impossible ack_complete from node %d (tcode %d)\00", align 1
@TCODE_LOCK_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"impossible ack_data_error from node %d (tcode %d)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"got invalid ack %d from node %d (tcode %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_packet_success(%struct.hpsb_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %3, align 8
  %4 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %5 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %102 [
    i32 135, label %7
    i32 139, label %42
    i32 141, label %42
    i32 140, label %42
    i32 133, label %45
    i32 138, label %48
    i32 136, label %71
    i32 142, label %96
    i32 134, label %99
    i32 137, label %99
    i32 145, label %99
    i32 144, label %99
    i32 146, label %99
    i32 143, label %99
  ]

7:                                                ; preds = %1
  %8 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %9 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 12
  %14 = and i32 %13, 15
  switch i32 %14, label %28 [
    i32 131, label %15
    i32 130, label %16
    i32 129, label %19
    i32 128, label %22
    i32 132, label %25
  ]

15:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %115

16:                                               ; preds = %7
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %7
  %20 = load i32, i32* @EREMOTEIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %115

22:                                               ; preds = %7
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %115

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %115

28:                                               ; preds = %7
  %29 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %30 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 12
  %35 = and i32 %34, 15
  %36 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %37 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i32, ...) @HPSB_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %115

42:                                               ; preds = %1, %1, %1
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %115

45:                                               ; preds = %1
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %115

48:                                               ; preds = %1
  %49 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %50 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TCODE_WRITEQ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %56 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TCODE_WRITEB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  store i32 0, i32* %2, align 4
  br label %115

61:                                               ; preds = %54
  %62 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %63 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %66 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, i32, i32, ...) @HPSB_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %115

71:                                               ; preds = %1
  %72 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %73 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TCODE_WRITEB, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %79 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TCODE_LOCK_REQUEST, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %115

86:                                               ; preds = %77
  %87 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %88 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %91 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, i32, ...) @HPSB_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %115

96:                                               ; preds = %1
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %115

99:                                               ; preds = %1, %1, %1, %1, %1, %1
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %115

102:                                              ; preds = %1
  %103 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %104 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %107 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %110 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, i32, i32, ...) @HPSB_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %108, i32 %111)
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %102, %99, %96, %86, %83, %61, %60, %45, %42, %28, %25, %22, %19, %16, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @HPSB_ERR(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

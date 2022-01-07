; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't start unbound connection\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"invalid burst lengths: first_burst %d max_burst %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"invalid recv timeout of zero. Using 5 seconds\0A.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"invalid ping timeout of zero. Using 5 seconds.\0A\00", align 1
@ISCSI_CONN_STARTED = common dso_local global i32 0, align 4
@ISCSI_STATE_LOGGED_IN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@TMF_INITIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %4, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 9
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  store %struct.iscsi_session* %11, %struct.iscsi_session** %5, align 8
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %13 = icmp ne %struct.iscsi_session* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %15, %struct.iscsi_conn* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %161

20:                                               ; preds = %1
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %45 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %39, %struct.iscsi_conn* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %161

50:                                               ; preds = %30, %25
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %63 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %61, %struct.iscsi_conn* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 1
  store i32 5, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %55, %50
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %79 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %77, %struct.iscsi_conn* %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 0
  store i32 5, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %71, %66
  %83 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %84 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %83, i32 0, i32 4
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load i32, i32* @ISCSI_CONN_STARTED, align 4
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @ISCSI_STATE_LOGGED_IN, align 4
  %90 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %91 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %93 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %96 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @jiffies, align 8
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %99 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @jiffies, align 8
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %104 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %82
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %114 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %113, i32 0, i32 5
  %115 = load i8*, i8** @jiffies, align 8
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @HZ, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr i8, i8* %115, i64 %121
  %123 = call i32 @mod_timer(i32* %114, i8* %122)
  br label %124

124:                                              ; preds = %112, %107, %82
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %126 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %149 [
    i32 129, label %128
    i32 128, label %146
  ]

128:                                              ; preds = %124
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %130 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load i32, i32* @TMF_INITIAL, align 4
  %132 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %133 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %135 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %139 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 16
  br i1 %141, label %142, label %145

142:                                              ; preds = %128
  %143 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %144 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %128
  br label %150

146:                                              ; preds = %124
  %147 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %148 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  br label %150

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149, %146, %145
  %151 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %152 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %151, i32 0, i32 4
  %153 = call i32 @spin_unlock_bh(i32* %152)
  %154 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %155 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @iscsi_unblock_session(i32 %156)
  %158 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %159 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %158, i32 0, i32 3
  %160 = call i32 @wake_up(i32* %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %150, %38, %14
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_unblock_session(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

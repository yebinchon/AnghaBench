; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_get_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, %struct.TYPE_3__, %struct.cxgbi_device* }
%struct.TYPE_3__ = type { i64 }
%struct.cxgbi_device = type { %struct.TYPE_4__**, %struct.cxgbi_ports_map }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbi_ports_map = type { i32, i32, i32, i32, i64, %struct.cxgbi_sock** }

@.str = private unnamed_addr constant [34 x i8] c"cdev 0x%p, p#%u %s, NO port map.\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"source port NON-ZERO %u.\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cdev 0x%p, p#%u %s, ALL ports used.\0A\00", align 1
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cdev 0x%p, p#%u %s, p %u, %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cdev 0x%p, p#%u %s, next %u?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*)* @sock_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_get_port(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.cxgbi_device*, align 8
  %5 = alloca %struct.cxgbi_ports_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 2
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  store %struct.cxgbi_device* %10, %struct.cxgbi_device** %4, align 8
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %12 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %11, i32 0, i32 1
  store %struct.cxgbi_ports_map* %12, %struct.cxgbi_ports_map** %5, align 8
  %13 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %14 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %23 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %18, i64 %21, i32 %31)
  %33 = load i32, i32* @EADDRNOTAVAIL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %190

35:                                               ; preds = %1
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ntohs(i64 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.cxgbi_device*
  %49 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %48)
  %50 = load i32, i32* @EADDRINUSE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %190

52:                                               ; preds = %35
  %53 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %54 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %57 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %52
  %64 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %65 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %69 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %72 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %75 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %67, i64 %70, i32 %80)
  %82 = load i32, i32* @EADDRNOTAVAIL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %190

84:                                               ; preds = %52
  %85 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %86 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %7, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %162, %84
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %92 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %88
  %97 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %98 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %97, i32 0, i32 5
  %99 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %99, i64 %101
  %103 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %102, align 8
  %104 = icmp ne %struct.cxgbi_sock* %103, null
  br i1 %104, label %161, label %105

105:                                              ; preds = %96
  %106 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %107 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %111 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = call i64 @htons(i64 %115)
  %117 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %118 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %122 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %124 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %125 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %124, i32 0, i32 5
  %126 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %126, i64 %128
  store %struct.cxgbi_sock* %123, %struct.cxgbi_sock** %129, align 8
  %130 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %131 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %130, i32 0, i32 3
  %132 = call i32 @spin_unlock_bh(i32* %131)
  %133 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %134 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %133)
  %135 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %138 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %139 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %142 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %142, align 8
  %144 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %145 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %143, i64 %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %152 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %158 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @log_debug(i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_device* %137, i64 %140, i32 %150, i64 %156, i32 %159)
  store i32 0, i32* %2, align 4
  br label %190

161:                                              ; preds = %96
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %88, label %166

166:                                              ; preds = %162
  %167 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %168 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %167, i32 0, i32 3
  %169 = call i32 @spin_unlock_bh(i32* %168)
  %170 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %171 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %172 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %175 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %175, align 8
  %177 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %178 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %176, i64 %179
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %5, align 8
  %185 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_device* %170, i64 %173, i32 %183, i32 %186)
  %188 = load i32, i32* @EADDRNOTAVAIL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %166, %105, %63, %41, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, i64, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i64, i32, i64, i32) #1

declare dso_local i32 @pr_warn(i8*, %struct.cxgbi_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

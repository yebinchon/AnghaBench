; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mr = type { %struct.TYPE_9__, %struct.ib_mr, %struct.ocrdma_pd*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.ocrdma_dev* }
%struct.ocrdma_pd = type { i32, %struct.ocrdma_dev* }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ocrdma_reg_user_mr(%struct.ib_pd* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocrdma_dev*, align 8
  %16 = alloca %struct.ocrdma_mr*, align 8
  %17 = alloca %struct.ocrdma_pd*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %22 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %21)
  store %struct.ocrdma_pd* %22, %struct.ocrdma_pd** %17, align 8
  %23 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %17, align 8
  %24 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %23, i32 0, i32 1
  %25 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %24, align 8
  store %struct.ocrdma_dev* %25, %struct.ocrdma_dev** %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ib_mr* @ERR_PTR(i32 %37)
  store %struct.ib_mr* %38, %struct.ib_mr** %7, align 8
  br label %212

39:                                               ; preds = %30, %6
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ocrdma_mr* @kzalloc(i32 80, i32 %40)
  store %struct.ocrdma_mr* %41, %struct.ocrdma_mr** %16, align 8
  %42 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %43 = icmp ne %struct.ocrdma_mr* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = call %struct.ib_mr* @ERR_PTR(i32 %45)
  store %struct.ib_mr* %46, %struct.ib_mr** %7, align 8
  br label %212

47:                                               ; preds = %39
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %49 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %50 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 10
  store %struct.ocrdma_dev* %48, %struct.ocrdma_dev** %51, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %53 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call %struct.TYPE_10__* @ib_umem_get(i32 %56, i8* %57, i8* %58, i32 %59, i32 0)
  %61 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %62 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %61, i32 0, i32 3
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %64 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i64 @IS_ERR(%struct.TYPE_10__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %207

71:                                               ; preds = %47
  %72 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %73 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %72, i32 0, i32 3
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = call i32 @ib_umem_page_count(%struct.TYPE_10__* %74)
  store i32 %75, i32* %18, align 4
  %76 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @ocrdma_get_pbl_info(%struct.ocrdma_mr* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %207

82:                                               ; preds = %71
  %83 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %84 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %89 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 9
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %92 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %97 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 8
  store i32 %95, i32* %98, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %101 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 7
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %105 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 6
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %114 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %123 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %132 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %135 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %144 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 8
  %146 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %147 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %148 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %147, i32 0, i32 0
  %149 = call i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev* %146, %struct.TYPE_9__* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %82
  br label %207

153:                                              ; preds = %82
  %154 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %155 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @build_user_pbes(%struct.ocrdma_dev* %154, %struct.ocrdma_mr* %155, i32 %156)
  %158 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %159 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %160 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %159, i32 0, i32 0
  %161 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %17, align 8
  %162 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @ocrdma_reg_mr(%struct.ocrdma_dev* %158, %struct.TYPE_9__* %160, i32 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %153
  br label %202

169:                                              ; preds = %153
  %170 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %17, align 8
  %171 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %172 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %171, i32 0, i32 2
  store %struct.ocrdma_pd* %170, %struct.ocrdma_pd** %172, align 8
  %173 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %174 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %178 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %181 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %169
  %186 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %187 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %185, %169
  %192 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %193 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %197 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %199

199:                                              ; preds = %191, %185
  %200 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %201 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %200, i32 0, i32 1
  store %struct.ib_mr* %201, %struct.ib_mr** %7, align 8
  br label %212

202:                                              ; preds = %168
  %203 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %204 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %205 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %204, i32 0, i32 0
  %206 = call i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %203, %struct.TYPE_9__* %205)
  br label %207

207:                                              ; preds = %202, %152, %81, %68
  %208 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %209 = call i32 @kfree(%struct.ocrdma_mr* %208)
  %210 = load i32, i32* %14, align 4
  %211 = call %struct.ib_mr* @ERR_PTR(i32 %210)
  store %struct.ib_mr* %211, %struct.ib_mr** %7, align 8
  br label %212

212:                                              ; preds = %207, %199, %44, %35
  %213 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %213
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @ib_umem_get(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_10__*) #1

declare dso_local i32 @ocrdma_get_pbl_info(%struct.ocrdma_mr*, i32) #1

declare dso_local i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @build_user_pbes(%struct.ocrdma_dev*, %struct.ocrdma_mr*, i32) #1

declare dso_local i32 @ocrdma_reg_mr(%struct.ocrdma_dev*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

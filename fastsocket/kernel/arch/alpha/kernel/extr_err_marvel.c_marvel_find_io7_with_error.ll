; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_marvel.c_marvel_find_io7_with_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_marvel.c_marvel_find_io7_with_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev7_pal_io_subpacket = type { i64, %struct.TYPE_40__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ev7_lf_subpackets = type { i32, %struct.ev7_pal_io_subpacket* }
%struct.io7 = type { i32, %struct.TYPE_28__*, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { %struct.TYPE_48__, %struct.TYPE_27__*, %struct.TYPE_26__, %struct.TYPE_50__, %struct.TYPE_49__, %struct.TYPE_47__, %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_36__ }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@IO7_NUM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ev7_pal_io_subpacket* (%struct.ev7_lf_subpackets*)* @marvel_find_io7_with_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ev7_pal_io_subpacket* @marvel_find_io7_with_error(%struct.ev7_lf_subpackets* %0) #0 {
  %2 = alloca %struct.ev7_pal_io_subpacket*, align 8
  %3 = alloca %struct.ev7_lf_subpackets*, align 8
  %4 = alloca %struct.ev7_pal_io_subpacket*, align 8
  %5 = alloca %struct.io7*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  store %struct.ev7_lf_subpackets* %0, %struct.ev7_lf_subpackets** %3, align 8
  %9 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %10 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %9, i32 0, i32 1
  %11 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %10, align 8
  store %struct.ev7_pal_io_subpacket* %11, %struct.ev7_pal_io_subpacket** %4, align 8
  %12 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %13 = icmp ne %struct.ev7_pal_io_subpacket* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.ev7_pal_io_subpacket* null, %struct.ev7_pal_io_subpacket** %2, align 8
  br label %360

15:                                               ; preds = %1
  %16 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %17 = call i32 @memset(%struct.ev7_pal_io_subpacket* %16, i32 85, i32 64)
  store %struct.io7* null, %struct.io7** %5, align 8
  br label %18

18:                                               ; preds = %68, %15
  %19 = load %struct.io7*, %struct.io7** %5, align 8
  %20 = call %struct.io7* @marvel_next_io7(%struct.io7* %19)
  store %struct.io7* %20, %struct.io7** %5, align 8
  %21 = icmp ne %struct.io7* null, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  %23 = load %struct.io7*, %struct.io7** %5, align 8
  %24 = getelementptr inbounds %struct.io7, %struct.io7* %23, i32 0, i32 1
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %60, %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IO7_NUM_PORTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.io7*, %struct.io7** %5, align 8
  %37 = getelementptr inbounds %struct.io7, %struct.io7* %36, i32 0, i32 2
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.io7*, %struct.io7** %5, align 8
  %48 = getelementptr inbounds %struct.io7, %struct.io7* %47, i32 0, i32 2
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %46, %45
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %31

63:                                               ; preds = %31
  %64 = load i64, i64* %7, align 8
  %65 = and i64 %64, -9223372036854775808
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %69

68:                                               ; preds = %63
  br label %18

69:                                               ; preds = %67, %18
  %70 = load %struct.io7*, %struct.io7** %5, align 8
  %71 = icmp ne %struct.io7* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store %struct.ev7_pal_io_subpacket* null, %struct.ev7_pal_io_subpacket** %2, align 8
  br label %360

73:                                               ; preds = %69
  %74 = load %struct.io7*, %struct.io7** %5, align 8
  %75 = getelementptr inbounds %struct.io7, %struct.io7* %74, i32 0, i32 1
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %81 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %80, i32 0, i32 12
  store i32 %79, i32* %81, align 8
  %82 = load %struct.io7*, %struct.io7** %5, align 8
  %83 = getelementptr inbounds %struct.io7, %struct.io7* %82, i32 0, i32 1
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %89 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 4
  %90 = load %struct.io7*, %struct.io7** %5, align 8
  %91 = getelementptr inbounds %struct.io7, %struct.io7* %90, i32 0, i32 1
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %97 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load %struct.io7*, %struct.io7** %5, align 8
  %99 = getelementptr inbounds %struct.io7, %struct.io7* %98, i32 0, i32 1
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %105 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 4
  %106 = load %struct.io7*, %struct.io7** %5, align 8
  %107 = getelementptr inbounds %struct.io7, %struct.io7* %106, i32 0, i32 1
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %113 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = load %struct.io7*, %struct.io7** %5, align 8
  %115 = getelementptr inbounds %struct.io7, %struct.io7* %114, i32 0, i32 1
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %121 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.io7*, %struct.io7** %5, align 8
  %123 = getelementptr inbounds %struct.io7, %struct.io7* %122, i32 0, i32 1
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %129 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.io7*, %struct.io7** %5, align 8
  %131 = getelementptr inbounds %struct.io7, %struct.io7* %130, i32 0, i32 1
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %137 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.io7*, %struct.io7** %5, align 8
  %139 = getelementptr inbounds %struct.io7, %struct.io7* %138, i32 0, i32 1
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %145 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.io7*, %struct.io7** %5, align 8
  %147 = getelementptr inbounds %struct.io7, %struct.io7* %146, i32 0, i32 1
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %153 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.io7*, %struct.io7** %5, align 8
  %155 = getelementptr inbounds %struct.io7, %struct.io7* %154, i32 0, i32 1
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %163 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.io7*, %struct.io7** %5, align 8
  %165 = getelementptr inbounds %struct.io7, %struct.io7* %164, i32 0, i32 1
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %173 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %335, %73
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @IO7_NUM_PORTS, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %338

178:                                              ; preds = %174
  %179 = load %struct.io7*, %struct.io7** %5, align 8
  %180 = getelementptr inbounds %struct.io7, %struct.io7* %179, i32 0, i32 2
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %185, align 8
  store %struct.TYPE_42__* %186, %struct.TYPE_42__** %8, align 8
  %187 = load %struct.io7*, %struct.io7** %5, align 8
  %188 = getelementptr inbounds %struct.io7, %struct.io7* %187, i32 0, i32 2
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %178
  br label %335

197:                                              ; preds = %178
  %198 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %203 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %202, i32 0, i32 1
  %204 = load %struct.TYPE_40__*, %struct.TYPE_40__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %207, i32 0, i32 0
  store i64 %201, i64* %208, align 8
  %209 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %214 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %213, i32 0, i32 1
  %215 = load %struct.TYPE_40__*, %struct.TYPE_40__** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %218, i32 0, i32 1
  store i32 %212, i32* %219, align 8
  %220 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %220, i32 0, i32 9
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %225 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %224, i32 0, i32 1
  %226 = load %struct.TYPE_40__*, %struct.TYPE_40__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %229, i32 0, i32 9
  store i32 %223, i32* %230, align 8
  %231 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %236 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %235, i32 0, i32 1
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 8
  store i32 %234, i32* %241, align 4
  %242 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %242, i32 0, i32 7
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %247 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %246, i32 0, i32 1
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %251, i32 0, i32 7
  store i32 %245, i32* %252, align 8
  %253 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %258 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %257, i32 0, i32 1
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %262, i32 0, i32 6
  store i32 %256, i32* %263, align 4
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %269 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %268, i32 0, i32 1
  %270 = load %struct.TYPE_40__*, %struct.TYPE_40__** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %273, i32 0, i32 5
  store i32 %267, i32* %274, align 8
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %280 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %279, i32 0, i32 1
  %281 = load %struct.TYPE_40__*, %struct.TYPE_40__** %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 4
  store i32 %278, i32* %285, align 4
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %291 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %290, i32 0, i32 1
  %292 = load %struct.TYPE_40__*, %struct.TYPE_40__** %291, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %295, i32 0, i32 3
  store i32 %289, i32* %296, align 8
  %297 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %302 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %301, i32 0, i32 1
  %303 = load %struct.TYPE_40__*, %struct.TYPE_40__** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %306, i32 0, i32 2
  store i32 %300, i32* %307, align 4
  %308 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %309 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %308, i32 0, i32 1
  %310 = load %struct.TYPE_40__*, %struct.TYPE_40__** %309, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 8
  %319 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %320 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %319, i32 0, i32 1
  %321 = load %struct.TYPE_40__*, %struct.TYPE_40__** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %328, i32 0, i32 0
  store i64 %326, i64* %329, align 8
  %330 = call i32 (...) @mb()
  %331 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  br label %335

335:                                              ; preds = %197, %196
  %336 = load i32, i32* %6, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %6, align 4
  br label %174

338:                                              ; preds = %174
  %339 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  %340 = getelementptr inbounds %struct.ev7_pal_io_subpacket, %struct.ev7_pal_io_subpacket* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.io7*, %struct.io7** %5, align 8
  %343 = getelementptr inbounds %struct.io7, %struct.io7* %342, i32 0, i32 1
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %345, i32 0, i32 0
  store i64 %341, i64* %346, align 8
  %347 = call i32 (...) @mb()
  %348 = load %struct.io7*, %struct.io7** %5, align 8
  %349 = getelementptr inbounds %struct.io7, %struct.io7* %348, i32 0, i32 1
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.io7*, %struct.io7** %5, align 8
  %355 = getelementptr inbounds %struct.io7, %struct.io7* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %358 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  %359 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %4, align 8
  store %struct.ev7_pal_io_subpacket* %359, %struct.ev7_pal_io_subpacket** %2, align 8
  br label %360

360:                                              ; preds = %338, %72, %14
  %361 = load %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_io_subpacket** %2, align 8
  ret %struct.ev7_pal_io_subpacket* %361
}

declare dso_local i32 @memset(%struct.ev7_pal_io_subpacket*, i32, i32) #1

declare dso_local %struct.io7* @marvel_next_io7(%struct.io7*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
